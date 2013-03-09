.class Lcom/android/browser/AutofillHandler$LoadFromDb;
.super Ljava/lang/Thread;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFromDb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutofillHandler;


# direct methods
.method private constructor <init>(Lcom/android/browser/AutofillHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/AutofillHandler;Lcom/android/browser/AutofillHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/AutofillHandler$LoadFromDb;-><init>(Lcom/android/browser/AutofillHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$100(Lcom/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 77
    .local v15, p:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    const-string v2, "autofill_active_profile_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    move-object/from16 v16, v0

    #getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static/range {v16 .. v16}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v1, v2}, Lcom/android/browser/AutofillHandler;->access$202(Lcom/android/browser/AutofillHandler;I)I

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$100(Lcom/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;

    move-result-object v13

    .line 85
    .local v13, autoFillDb:Lcom/android/browser/AutoFillProfileDatabase;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/browser/AutoFillProfileDatabase;->getProfile(I)Landroid/database/Cursor;

    move-result-object v14

    .line 87
    .local v14, c:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const-string v1, "fullname"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, fullName:Ljava/lang/String;
    const-string v1, "email"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, email:Ljava/lang/String;
    const-string v1, "companyname"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, company:Ljava/lang/String;
    const-string v1, "addressline1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, addressLine1:Ljava/lang/String;
    const-string v1, "addressline2"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, addressLine2:Ljava/lang/String;
    const-string v1, "city"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, city:Ljava/lang/String;
    const-string v1, "state"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, state:Ljava/lang/String;
    const-string v1, "zipcode"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, zip:Ljava/lang/String;
    const-string v1, "country"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, country:Ljava/lang/String;
    const-string v1, "phone"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, phone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    move-object/from16 v16, v0

    new-instance v1, Landroid/webkit/WebSettings$AutoFillProfile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v2}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v2

    invoke-direct/range {v1 .. v12}, Landroid/webkit/WebSettings$AutoFillProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    #setter for: Lcom/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    invoke-static {v0, v1}, Lcom/android/browser/AutofillHandler;->access$302(Lcom/android/browser/AutofillHandler;Landroid/webkit/WebSettings$AutoFillProfile;)Landroid/webkit/WebSettings$AutoFillProfile;

    .line 114
    .end local v3           #fullName:Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #company:Ljava/lang/String;
    .end local v6           #addressLine1:Ljava/lang/String;
    .end local v7           #addressLine2:Ljava/lang/String;
    .end local v8           #city:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #zip:Ljava/lang/String;
    .end local v11           #country:Ljava/lang/String;
    .end local v12           #phone:Ljava/lang/String;
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 115
    invoke-virtual {v13}, Lcom/android/browser/AutoFillProfileDatabase;->close()V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/AutofillHandler$LoadFromDb;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mLoaded:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$400(Lcom/android/browser/AutofillHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 118
    return-void
.end method
