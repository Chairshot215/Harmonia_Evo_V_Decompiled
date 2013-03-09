.class Lcom/htc/android/mail/FetchTypeSettings2$1;
.super Ljava/lang/Object;
.source "FetchTypeSettings2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/FetchTypeSettings2;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/FetchTypeSettings2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/FetchTypeSettings2;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/android/mail/FetchTypeSettings2$1;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/FetchTypeSettings2$1;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    #calls: Lcom/htc/android/mail/FetchTypeSettings2;->updateAccount()V
    invoke-static {v1}, Lcom/htc/android/mail/FetchTypeSettings2;->access$000(Lcom/htc/android/mail/FetchTypeSettings2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FetchTypeSettings"

    const-string v2, "catch excetion"

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
