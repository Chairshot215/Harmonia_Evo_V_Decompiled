.class Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;
.super Ljava/lang/Object;
.source "ShareViaImpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/ShareViaImpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SVIAppInfoLoader"
.end annotation


# instance fields
.field private mSharingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/appsharing/ShareViaImpActivity;


# direct methods
.method public constructor <init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/content/Context;)V
    .locals 19
    .parameter
    .parameter "context"

    .prologue
    .line 132
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->mSharingList:Ljava/util/ArrayList;

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 136
    .local v12, pkgMgr:Landroid/content/pm/PackageManager;
    #getter for: Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Lcom/htc/appsharing/ShareViaImpActivity;->access$000(Lcom/htc/appsharing/ShareViaImpActivity;)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 137
    .local v9, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v9, :cond_4

    .line 139
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v8, info:Landroid/content/pm/ResolveInfo;
    const/4 v13, 0x0

    .line 142
    .local v13, toExclude:Z
    sget-object v3, Lcom/htc/appsharing/ShareViaCustomerAP;->sExcludePackageNames:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v11, :cond_1

    aget-object v4, v3, v6

    .line 144
    .local v4, exPkgName:Ljava/lang/String;
    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 146
    const/4 v13, 0x1

    .line 151
    .end local v4           #exPkgName:Ljava/lang/String;
    :cond_1
    if-nez v13, :cond_0

    .line 153
    invoke-virtual {v8, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 154
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 155
    .local v10, label:Ljava/lang/CharSequence;
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 157
    .local v2, activityInfo:Landroid/content/pm/ActivityInfo;
    const-string v14, "AppSharing.ShareViaImpActivity"

    const-string v15, "add SVIAppInfo:%s, %s, %s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->mSharingList:Ljava/util/ArrayList;

    new-instance v15, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v7, v10, v2}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;-><init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v2           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #label:Ljava/lang/CharSequence;
    .restart local v4       #exPkgName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 162
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #exPkgName:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #len$:I
    .end local v13           #toExclude:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->mSharingList:Ljava/util/ArrayList;

    new-instance v15, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader$1;-><init>(Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;Lcom/htc/appsharing/ShareViaImpActivity;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    :cond_4
    return-void
.end method


# virtual methods
.method public get(I)Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->mSharingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->mSharingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
