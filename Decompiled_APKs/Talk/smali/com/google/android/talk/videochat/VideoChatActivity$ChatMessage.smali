.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatMessage"
.end annotation


# instance fields
.field mMessage:Ljava/lang/String;

.field mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "message"
    .parameter "timestamp"

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mMessage:Ljava/lang/String;

    .line 429
    iput-wide p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mTimestamp:J

    .line 430
    return-void
.end method
