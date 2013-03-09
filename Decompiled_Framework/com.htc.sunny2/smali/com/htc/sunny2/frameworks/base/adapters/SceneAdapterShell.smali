.class public Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapterShell;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "SceneAdapterShell.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SceneAdapterShell"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "SceneAdapterShell"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
