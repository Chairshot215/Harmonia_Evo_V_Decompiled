.class public final Lcom/discretix/drm/api/DxTextAttribute;
.super Ljava/lang/Object;
.source "DxTextAttribute.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/DxTextAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/discretix/drm/api/DxTextAttribute;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxTextAttribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxTextAttribute;->mValue:Ljava/lang/String;

    return-object v0
.end method
