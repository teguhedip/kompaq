<RelativeLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <include
        android:id="@+id/toolbar_actionbar"
        layout="@layout/toolbar_default"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"/>

    <android.support.v4.widget.DrawerLayout
        android:id="@+id/drawer"
        xmlns:android="http://schemas.android.com/apk/res/android"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:layout_below="@+id/toolbar_actionbar">

        <FrameLayout
            android:id="@+id/container"
            android:layout_width="match_parent"
            android:clickable="true"
            android:layout_height="match_parent"/>

        <!-- android:layout_marginTop="?android:attr/actionBarSize"-->
        <fragment
            android:id="@+id/fragment_drawer"
            android:name="${packageName}.NavigationDrawerFragment"
            android:layout_width="@dimen/navigation_drawer_width"
            android:layout_height="match_parent"
            android:layout_gravity="<#if buildApi gte 17>start<#else>left</#if>"
            app:layout="@layout/fragment_navigation_drawer"/>
    </android.support.v4.widget.DrawerLayout>
</RelativeLayout>
