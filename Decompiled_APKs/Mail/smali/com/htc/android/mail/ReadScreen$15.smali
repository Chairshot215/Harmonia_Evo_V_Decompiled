.class Lcom/htc/android/mail/ReadScreen$15;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->meetingRespEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$15;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "childPosition"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$15;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->meetingReplySelected:I
    invoke-static {v0, p2}, Lcom/htc/android/mail/ReadScreen;->access$1202(Lcom/htc/android/mail/ReadScreen;I)I

    .line 1114
    return-void
.end method
