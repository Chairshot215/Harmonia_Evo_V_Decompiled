.class public Lcom/m0narx/tweaks/RosieHideApps;
.super Landroid/app/Activity;
.source "RosieHideApps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;,
        Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field OrigHidenApps:Ljava/lang/String;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private Title:Lcom/htc/widget/HeaderBarText;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps;->OrigHidenApps:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/m0narx/tweaks/RosieHideApps$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/RosieHideApps$1;-><init>(Lcom/m0narx/tweaks/RosieHideApps;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/RosieHideApps;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/RosieHideApps;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public GetActivityIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "Package"
    .parameter "Activity"

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, Icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, Component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 172
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetAllIntents()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 151
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 154
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 155
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    .line 156
    .local v2, ListOfIntents:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 162
    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 163
    return-object v2

    .line 157
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 159
    .local v1, Label:Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, Element:Ljava/lang/String;
    aput-object v0, v2, v3

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public LoadData()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 133
    iget-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->Cr:Landroid/content/ContentResolver;

    const-string v8, "tweaks_rosie_hideapp"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->OrigHidenApps:Ljava/lang/String;

    .line 134
    iget-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->OrigHidenApps:Ljava/lang/String;

    if-nez v7, :cond_0

    const-string v7, ""

    iput-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->OrigHidenApps:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->OrigHidenApps:Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, HidenAppsArr:[Ljava/lang/String;
    new-instance v7, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;-><init>(Lcom/m0narx/tweaks/RosieHideApps;)V

    iput-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    .line 137
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->GetAllIntents()[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, IntentList:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v1

    if-lt v4, v7, :cond_1

    .line 147
    iget-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void

    .line 139
    :cond_1
    aget-object v7, v1, v4

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, elements:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v3, v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, Name:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 142
    .local v5, isChecked:Ljava/lang/Boolean;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    array-length v7, v0

    if-lt v6, v7, :cond_2

    .line 145
    iget-object v7, p0, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    aget-object v8, v3, v9

    invoke-virtual {v7, v8, v2, v5}, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_2
    aget-object v7, v0, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 142
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 49
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->Cr:Landroid/content/ContentResolver;

    .line 50
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/RosieHideApps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->inflater:Landroid/view/LayoutInflater;

    .line 51
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/RosieHideApps;->setContentView(I)V

    .line 52
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/RosieHideApps;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->Title:Lcom/htc/widget/HeaderBarText;

    .line 53
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->Title:Lcom/htc/widget/HeaderBarText;

    const v3, 0x7f05009a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 54
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->Title:Lcom/htc/widget/HeaderBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 57
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 58
    .local v1, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 59
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/RosieHideApps;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 62
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f05007c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 64
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/RosieHideApps;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 65
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f05002e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 67
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/m0narx/tweaks/RosieHideApps$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/RosieHideApps$2;-><init>(Lcom/m0narx/tweaks/RosieHideApps;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/m0narx/tweaks/RosieHideApps$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/RosieHideApps$3;-><init>(Lcom/m0narx/tweaks/RosieHideApps;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/RosieHideApps;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    .line 94
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 95
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 96
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 97
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 99
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/m0narx/tweaks/RosieHideApps$4;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/RosieHideApps$4;-><init>(Lcom/m0narx/tweaks/RosieHideApps;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 110
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 112
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v3, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 114
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 117
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    .local v0, DataLoader:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps;->LoadData()V

    .line 123
    return-void
.end method
