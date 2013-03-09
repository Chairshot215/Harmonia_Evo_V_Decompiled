.class public Lcom/android/mms/util/CAccountMgr$ContactsSource;
.super Ljava/lang/Object;
.source "CAccountMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CAccountMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactsSource"
.end annotation


# static fields
.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_SUMMARY:I = 0x1


# instance fields
.field public accountType:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public summaryResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/util/CAccountMgr;

.field public titleRes:I


# direct methods
.method constructor <init>(Lcom/android/mms/util/CAccountMgr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "strAccountType"
    .parameter "strResPackageName"

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object p1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->this$0:Lcom/android/mms/util/CAccountMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->resPackageName:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->summaryResPackageName:Ljava/lang/String;

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    .line 279
    iput-object p2, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->resPackageName:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->resPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->summaryResPackageName:Ljava/lang/String;

    .line 282
    return-void
.end method


# virtual methods
.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 285
    iget v1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->summaryResPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->summaryResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 291
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 288
    :cond_0
    iget v1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    if-eq v1, v2, :cond_1

    .line 289
    iget v1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    goto :goto_0
.end method
