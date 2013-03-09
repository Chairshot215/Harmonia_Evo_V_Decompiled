.class public Lcom/android/settings/DeviceAdminSettings;
.super Landroid/app/ListFragment;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    }
.end annotation


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field static final TAG:Ljava/lang/String; = "DeviceAdminSettings"


# instance fields
.field final mActiveAdmins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    .line 150
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 72
    const v0, 0x7f040034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 129
    .local v0, dpi:Landroid/app/admin/DeviceAdminInfo;
    const-string v5, "ro.3LM.extended"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 130
    .local v2, kddi:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.threelm.dm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 132
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c06dd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 141
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_1
    return-void

    .end local v2           #kddi:Z
    :cond_0
    move v2, v4

    .line 129
    goto :goto_0

    .line 137
    .restart local v2       #kddi:Z
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 79
    return-void
.end method

.method updateList()V
    .locals 10

    .prologue
    .line 82
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 83
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_0

    .line 85
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 86
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    .end local v5           #i:I
    :cond_0
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 95
    .local v1, count:I
    :goto_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v1, :cond_5

    .line 96
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 98
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7, v6}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 99
    .local v3, dpi:Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    :cond_1
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.threelm.dm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.redbend.vdmc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_4

    .line 95
    .end local v3           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 94
    .end local v1           #count:I
    .end local v5           #i:I
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 112
    .restart local v1       #count:I
    .restart local v3       #dpi:Landroid/app/admin/DeviceAdminInfo;
    .restart local v5       #i:I
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 114
    .end local v3           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :catch_0
    move-exception v4

    .line 115
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DeviceAdminSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 116
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 117
    .local v4, e:Ljava/io/IOException;
    const-string v7, "DeviceAdminSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 121
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v8, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method
