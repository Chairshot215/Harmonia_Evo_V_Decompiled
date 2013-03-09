.class Lcom/htc/android/mail/signatureEditor$1;
.super Ljava/lang/Object;
.source "signatureEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/signatureEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/signatureEditor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/signatureEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/android/mail/signatureEditor$1;->this$0:Lcom/htc/android/mail/signatureEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/mail/signatureEditor$1;->this$0:Lcom/htc/android/mail/signatureEditor;

    invoke-virtual {v0}, Lcom/htc/android/mail/signatureEditor;->finish()V

    .line 63
    return-void
.end method
