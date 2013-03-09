.class Lcom/htc/android/mail/ReadScreen$12;
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
    .line 1067
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$12;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$12;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$12;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->addContactName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$12;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->addContactAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void
.end method
