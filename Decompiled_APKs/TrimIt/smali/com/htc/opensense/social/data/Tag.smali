.class public Lcom/htc/opensense/social/data/Tag;
.super Lcom/htc/opensense/social/data/Attachment;
.source "Tag.java"


# static fields
.field public static final TAG_TEXT:Ljava/lang/String; = "text"


# instance fields
.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/opensense/social/data/Tag;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 21
    return-void
.end method
