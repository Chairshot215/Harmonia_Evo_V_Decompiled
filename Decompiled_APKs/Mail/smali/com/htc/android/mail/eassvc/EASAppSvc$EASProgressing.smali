.class Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;
.super Ljava/lang/Object;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EASProgressing"
.end annotation


# instance fields
.field bInAutodiscover:Z

.field bInCreateAccount:Z

.field bInDeleteAccount:Z

.field bInTestServer:Z

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
