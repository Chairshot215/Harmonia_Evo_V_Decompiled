.class Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field private mHandler:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;

.field private mToken:I

.field public progressDialog:Lcom/htc/app/HtcProgressDialog;

.field private textField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(ILcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;I)V
    .locals 0
    .parameter "number"
    .parameter "handler"
    .parameter "token"

    .prologue
    .line 396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p1, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 398
    iput-object p2, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;

    .line 399
    iput p3, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    .line 400
    return-void
.end method


# virtual methods
.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 428
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;

    .line 431
    iget-object v0, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;

    iget v1, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
