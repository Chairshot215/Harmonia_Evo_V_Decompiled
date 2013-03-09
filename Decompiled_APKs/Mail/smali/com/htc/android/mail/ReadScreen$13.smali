.class Lcom/htc/android/mail/ReadScreen$13;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
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
    .line 1072
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$13;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$13;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ReadScreen;->mShowRecipientDialog:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$1102(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 1075
    return-void
.end method
