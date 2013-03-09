.class Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
.super Lcom/htc/android/mail/ReceiverList;
.source "ManageRecipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageReceiverList"
.end annotation


# instance fields
.field public softRef:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-direct {p0}, Lcom/htc/android/mail/ReceiverList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;-><init>(Lcom/htc/android/mail/ManageRecipient;)V

    return-void
.end method
