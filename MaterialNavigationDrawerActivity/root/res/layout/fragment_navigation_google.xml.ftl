<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
                android:layout_height="match_parent"
                android:layout_width="match_parent"
                android:background="@android:color/white">

    <RelativeLayout
        android:layout_width="match_parent"
        android:layout_height="168dp"
        android:background="@drawable/wallpaper"
        android:id="@+id/navigationHeader"
        android:paddingTop="24dp">

        <ImageView
            android:layout_width="64dp"
            android:layout_height="64dp"
            android:id="@+id/imgAvatar"
            android:layout_alignParentTop="true"
            android:layout_alignParentLeft="true"
            android:layout_alignParentStart="true"
            android:layout_marginLeft="16dp"
            android:layout_marginTop="16dp"
            android:layout_marginBottom="8dp"/>

        <LinearLayout
            android:orientation="vertical"
            android:layout_width="fill_parent"
            android:layout_height="56dp"
            android:layout_alignParentLeft="true"
            android:layout_alignParentStart="true"
            android:layout_below="@+id/imgAvatar"
            android:layout_marginRight="16dp"
            android:layout_marginLeft="16dp"
            android:layout_marginBottom="8dp">

            <TextView
                android:layout_width="match_parent"
                android:layout_height="0dp"
                android:id="@+id/txtUsername"
                android:layout_weight="1"
                android:text="John Doe"
                android:textSize="14sp"
                android:textStyle="bold"
                android:textColor="@android:color/white"/>

            <TextView
                android:layout_width="match_parent"
                android:layout_height="0dp"
                android:id="@+id/txtUserEmail"
                android:layout_weight="1"
                android:text="johndoe@doe.com"
                android:textColor="@android:color/white"/>
        </LinearLayout>
    </RelativeLayout>

    <View
        android:layout_width="match_parent"
        android:background="#1f000000"
        android:layout_height="1dp"
        android:id="@+id/separator"
        android:layout_below="@+id/navigationHeader"
        android:layout_marginBottom="8dp"/>

    <android.support.v7.widget.RecyclerView
        android:id="@+id/drawerList"
        android:layout_width="match_parent"
        android:clickable="true"
        android:scrollbars="vertical"
        android:layout_height="match_parent"
        android:background="@color/myDrawerBackground"
        android:layout_below="@+id/separator"/>

</RelativeLayout>