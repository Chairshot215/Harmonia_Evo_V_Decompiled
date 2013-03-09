.class Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;
.super Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProfileFromDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask",
        "<",
        "Ljava/lang/Integer;",
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
    .line 188
    const-class v0, Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->$assertionsDisabled:Z

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
    .line 189
    iput-object p1, p0, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;-><init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 2
    .parameter "values"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    #getter for: Lcom/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/AutofillHandler;->access$100(Lcom/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    .line 196
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    .local v0, id:I
    sget-boolean v1, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    invoke-virtual {v1, v0}, Lcom/android/browser/AutoFillProfileDatabase;->dropProfile(I)V

    .line 199
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$DeleteProfileFromDbTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
