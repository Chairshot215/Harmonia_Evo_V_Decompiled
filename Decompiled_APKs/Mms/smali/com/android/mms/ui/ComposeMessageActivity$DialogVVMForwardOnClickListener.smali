.class public Lcom/android/mms/ui/ComposeMessageActivity$DialogVVMForwardOnClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DialogVVMForwardOnClickListener"
.end annotation


# static fields
.field public static final DIALOG_FOWARD_BY_EMAIL:I = 0x2

.field public static final DIALOG_FOWARD_BY_MMS:I = 0x1

.field public static final DIALOG_FOWARD_BY_VVM:I = 0x0

.field private static final MODE_FORWARD:I = 0x2

.field private static final MODE_REPLY:I = 0x1

.field private static final TYPE_MAIL:I = 0x2

.field private static final TYPE_MESSAGE:I = 0x1

.field private static final TYPE_VOICEMAIL:I


# instance fields
.field mVvm_id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 16452
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DialogVVMForwardOnClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DialogVVMForwardOnClickListener;->mVvm_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 16473
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.vvm.VoiceMailTransmitActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16474
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    .line 16475
    .local v1, mode:I
    const/4 v2, 0x0

    .line 16476
    .local v2, type:I
    packed-switch p2, :pswitch_data_0

    .line 16487
    :goto_0
    const-string v3, "extra_id"

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DialogVVMForwardOnClickListener;->mVvm_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16488
    const-string v3, "extra_mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16489
    const-string v3, "extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16490
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DialogVVMForwardOnClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 16491
    return-void

    .line 16478
    :pswitch_0
    const/4 v2, 0x0

    .line 16479
    goto :goto_0

    .line 16481
    :pswitch_1
    const/4 v2, 0x1

    .line 16482
    goto :goto_0

    .line 16484
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 16476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVVmId(Ljava/lang/String;)V
    .locals 0
    .parameter "vvm_id"

    .prologue
    .line 16469
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DialogVVMForwardOnClickListener;->mVvm_id:Ljava/lang/String;

    .line 16470
    return-void
.end method
