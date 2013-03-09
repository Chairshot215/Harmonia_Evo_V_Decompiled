.class public Lcom/htc/appsharing/ShareViaImpActivity;
.super Landroid/app/Activity;
.source "ShareViaImpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/appsharing/ShareViaImpActivity$1;,
        Lcom/htc/appsharing/ShareViaImpActivity$SVIOnCancelListener;,
        Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;,
        Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;,
        Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;,
        Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;
    }
.end annotation


# static fields
.field private static final DIALOG_SHARE_VIA_IMP:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.ShareViaImpActivity"

.field public static final sExcludeAddHintPackageNames:[Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.htc.socialnetwork.plurk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc.friendstream"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc.htctwitter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/appsharing/ShareViaImpActivity;->sExcludeAddHintPackageNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/htc/appsharing/ShareViaImpActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected StartShareActivity(I)V
    .locals 11
    .parameter "index"

    .prologue
    .line 87
    iget-object v8, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    invoke-virtual {v8, p1}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->get(I)Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    move-result-object v8

    iget-object v0, v8, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 88
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v3, componentName:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    sget-boolean v8, Lcom/htc/appsharing/util/Customize;->SKU_CHS:Z

    if-nez v8, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 94
    .local v2, bToAddHint:Z
    sget-object v1, Lcom/htc/appsharing/ShareViaImpActivity;->sExcludeAddHintPackageNames:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v1, v6

    .line 96
    .local v5, exPkgName:Ljava/lang/String;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 98
    const/4 v2, 0x0

    .line 103
    .end local v5           #exPkgName:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 105
    iget-object v8, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;

    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, composeMessage:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/appsharing/ShareViaImpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    iget-object v8, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;

    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bToAddHint:Z
    .end local v4           #composeMessage:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    iget-object v8, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/htc/appsharing/ShareViaImpActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 94
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #bToAddHint:Z
    .restart local v5       #exPkgName:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/htc/appsharing/ShareViaImpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.htc.appsharing.intent.extra.SHARE_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mShareIntent:Landroid/content/Intent;

    .line 54
    new-instance v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    invoke-direct {v0, p0, p0}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;-><init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;

    iget-object v2, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;-><init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/content/Context;Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;)V

    new-instance v2, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;

    invoke-direct {v2, p0}, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;-><init>(Lcom/htc/appsharing/ShareViaImpActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnCancelListener;

    invoke-direct {v1, p0}, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnCancelListener;-><init>(Lcom/htc/appsharing/ShareViaImpActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mDialog:Landroid/app/Dialog;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/appsharing/ShareViaImpActivity;->showDialog(I)V

    .line 62
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity;->mDialog:Landroid/app/Dialog;

    .line 72
    :cond_0
    return-void
.end method
