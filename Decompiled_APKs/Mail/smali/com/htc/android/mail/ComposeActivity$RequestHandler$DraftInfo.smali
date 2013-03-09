.class public Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;
.super Ljava/lang/Object;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity$RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DraftInfo"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public messageId:J

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity$RequestHandler;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity$RequestHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 12586
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;->this$0:Lcom/htc/android/mail/ComposeActivity$RequestHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
