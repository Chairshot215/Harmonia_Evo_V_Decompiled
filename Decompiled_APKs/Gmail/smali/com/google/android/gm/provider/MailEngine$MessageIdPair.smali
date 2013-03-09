.class Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
.super Ljava/lang/Object;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageIdPair"
.end annotation


# instance fields
.field public conversationId:J

.field public messageId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 5752
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
