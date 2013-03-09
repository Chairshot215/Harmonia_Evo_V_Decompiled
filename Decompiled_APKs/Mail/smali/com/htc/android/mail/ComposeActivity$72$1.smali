.class Lcom/htc/android/mail/ComposeActivity$72$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity$72;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ComposeActivity$72;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity$72;)V
    .locals 0
    .parameter

    .prologue
    .line 8365
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$72$1;->this$1:Lcom/htc/android/mail/ComposeActivity$72;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8367
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72$1;->this$1:Lcom/htc/android/mail/ComposeActivity$72;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->saveMail(I)J
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$3000(Lcom/htc/android/mail/ComposeActivity;I)J

    .line 8368
    return-void
.end method
