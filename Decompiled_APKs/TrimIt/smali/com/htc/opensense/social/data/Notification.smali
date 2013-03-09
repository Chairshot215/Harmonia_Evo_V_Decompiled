.class public Lcom/htc/opensense/social/data/Notification;
.super Lcom/htc/opensense/social/data/Attachment;
.source "Notification.java"


# instance fields
.field public requestId:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "request_id"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "type"
    .end annotation
.end field

.field public unread:I
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "unread"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/opensense/social/data/Notification;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method
