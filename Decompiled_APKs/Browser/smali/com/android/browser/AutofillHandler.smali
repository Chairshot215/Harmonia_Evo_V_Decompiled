.class public Lcom/android/browser/AutofillHandler;
.super Ljava/lang/Object;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AutofillHandler$1;,
        Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;,
        Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;,
        Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;,
        Lcom/android/browser/AutofillHandler$LoadFromDb;
    }
.end annotation


# static fields
.field private static final NO_AUTOFILL_PROFILE_SET:I


# instance fields
.field private mAutoFillActiveProfileId:I

.field private mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

.field private mContext:Landroid/content/Context;

.field private mLoaded:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/AutofillHandler;->mLoaded:Ljava/util/concurrent/CountDownLatch;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/AutofillHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/AutofillHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/browser/AutofillHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/AutofillHandler;Landroid/webkit/WebSettings$AutoFillProfile;)Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/AutofillHandler;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/AutofillHandler;->mLoaded:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private setActiveAutoFillProfileId(I)V
    .locals 2
    .parameter "activeProfileId"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I

    .line 146
    iget-object v1, p0, Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autofill_active_profile_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    return-void
.end method


# virtual methods
.method public asyncLoadFromDb()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/browser/AutofillHandler$LoadFromDb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/AutofillHandler$LoadFromDb;-><init>(Lcom/android/browser/AutofillHandler;Lcom/android/browser/AutofillHandler$1;)V

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler$LoadFromDb;->start()V

    .line 61
    return-void
.end method

.method public getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    return-object v0
.end method

.method public setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V
    .locals 5
    .parameter "profile"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, profileId:I
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/webkit/WebSettings$AutoFillProfile;->getUniqueId()I

    move-result v0

    .line 126
    new-instance v1, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;-><init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V

    new-array v2, v2, [Landroid/webkit/WebSettings$AutoFillProfile;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    .line 137
    invoke-direct {p0, v0}, Lcom/android/browser/AutofillHandler;->setActiveAutoFillProfileId(I)V

    .line 138
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;-><init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V

    new-array v2, v2, [Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    invoke-virtual {v3}, Landroid/webkit/WebSettings$AutoFillProfile;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public waitForLoad()V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/AutofillHandler;->mLoaded:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method
