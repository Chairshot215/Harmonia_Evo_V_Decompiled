.class Lcom/htc/android/mail/ReadScreen$2;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 974
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$2;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$2;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->markStar()V

    .line 977
    return-void
.end method
