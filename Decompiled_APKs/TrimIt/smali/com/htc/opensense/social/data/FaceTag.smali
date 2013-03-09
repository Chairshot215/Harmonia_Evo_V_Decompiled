.class public Lcom/htc/opensense/social/data/FaceTag;
.super Lcom/htc/opensense/social/data/Attachment;
.source "FaceTag.java"


# instance fields
.field public center_x:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "center_x"
    .end annotation
.end field

.field public center_y:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "center_y"
    .end annotation
.end field

.field public height:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "height"
    .end annotation
.end field

.field public owner:Lcom/htc/opensense/social/data/Profile;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        notNull = true
        value = "owner"
    .end annotation
.end field

.field public tagged_uid:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "tagged_uid"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field

.field public width:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method
