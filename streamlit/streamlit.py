import streamlit as st
import psycopg2
# from streamlit.experimental.connectors import postgresql

def connectPsql():
    conn = st.experimental_connection("postgresql", type="sql")
    return conn

def getTable(schema, table):
    db_connector = connectPsql()
    # db_connector = con.cursor()
    # db_connector.execute("select * from {}.{}".format(schema, table))
    # df = db_connector.fetchall()
    df = db_connector.query("select * from {}.{}".format(schema, table))
    return df

if __name__ == "__main__":
    schema = "analytics"
    table1 = 'sale_values_by_category'
    table2 = 'sales_category_by_monthly'
    st.components.v1.html(
        """
            <p style="font-size:40px; font-family:Sans serif">
                Brazillian Ecommerce Analytics
            </p>
        """
    )
    with st.container():
        df1 = getTable(schema, table1)
        st.write("Sales values by category analytics")
        st.dataframe(df1)
    with st.container():
        df2 = getTable(schema, table2)
        st.write("Sales category by monthly analytics")
        st.dataframe(df2)
        