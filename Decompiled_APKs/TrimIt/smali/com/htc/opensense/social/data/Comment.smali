.class public Lcom/htc/opensense/social/data/Comment;
.super Lcom/htc/opensense/social/data/Attachment;
.source "Comment.java"


# static fields
.field public static final TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field public profile:Lcom/htc/opensense/social/data/Profile;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        notNull = true
        value = "owner"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/opensense/social/data/Comment;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method
