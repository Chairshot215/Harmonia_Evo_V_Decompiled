.class Lcom/htc/android/mail/MailAccountUI$ErrorListener;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorListener"
.end annotation


# static fields
.field public static final INCOMING_APOP:I = 0x68

.field public static final INCOMING_AUTH:I = 0x66

.field public static final INCOMING_IO:I = 0x67

.field public static final INCOMING_SSL:I = 0x64

.field public static final INCOMING_TLS:I = 0x65

.field public static final INVALID_ADDRESS:I = 0xd2

.field public static final OUTGOING_AUTH:I = 0xca

.field public static final OUTGOING_IO:I = 0xcb

.field public static final OUTGOING_NOAUTH:I = 0xcc

.field public static final OUTGOING_SMTP:I = 0xcd

.field public static final OUTGOING_SSL:I = 0xc8

.field public static final OUTGOING_TLS:I = 0xc9


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailAccountUI;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2219
    iput p2, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->mType:I

    .line 2220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2223
    iget v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 2284
    :goto_0
    :sswitch_0
    return-void

    .line 2226
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setFocusableInTouchMode(Z)V

    .line 2227
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->requestFocus()Z

    .line 2228
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 2231
    :sswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2234
    :sswitch_3
    if-eq p2, v3, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/MailAccountUI;->access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z

    .line 2240
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2241
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2242
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z

    .line 2238
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 2245
    :sswitch_4
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setFocusableInTouchMode(Z)V

    .line 2246
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->requestFocus()Z

    .line 2247
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 2251
    :sswitch_5
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setFocusableInTouchMode(Z)V

    .line 2252
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->requestFocus()Z

    .line 2253
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 2256
    :sswitch_6
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2259
    :sswitch_7
    if-eq p2, v3, :cond_1

    .line 2260
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/MailAccountUI;->access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z

    .line 2265
    :goto_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2266
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2267
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2262
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z

    .line 2263
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 2272
    :sswitch_8
    if-eq p2, v3, :cond_2

    .line 2273
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/MailAccountUI;->access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z

    .line 2277
    :goto_3
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2278
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2279
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 2275
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$ErrorListener;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z

    goto :goto_3

    .line 2223
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
        0xcb -> :sswitch_7
        0xcc -> :sswitch_0
        0xd2 -> :sswitch_8
    .end sparse-switch
.end method
