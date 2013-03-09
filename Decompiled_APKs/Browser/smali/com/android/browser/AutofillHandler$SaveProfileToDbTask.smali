.class Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;
.super Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveProfileToDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask",
        "<",
        "Landroid/webkit/WebSettings$AutoFillProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutofillHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;-><init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Landroid/webkit/WebSettings$AutoFillProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettings$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/webkit/WebSettings$AutoFillProfile;)Ljava/lang/Void;
    .locals 3
    .parameter "values"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$100(Lcom/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    .line 181
    sget-boolean v1, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 183
    .local v0, newProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    iget-object v1, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    iget-object v2, p0, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v2}, Lcom/android/browser/AutofillHandler;->access$200(Lcom/android/browser/AutofillHandler;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/browser/AutoFillProfileDatabase;->addOrUpdateProfile(ILandroid/webkit/WebSettings$AutoFillProfile;)V

    .line 184
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Landroid/webkit/WebSettings$AutoFillProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettings$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
