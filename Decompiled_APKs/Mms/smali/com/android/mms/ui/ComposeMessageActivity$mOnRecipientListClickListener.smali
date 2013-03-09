.class Lcom/android/mms/ui/ComposeMessageActivity$mOnRecipientListClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mOnRecipientListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10739
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$mOnRecipientListClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 10742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$mOnRecipientListClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showContactDialog(I)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12200(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 10743
    return-void
.end method
