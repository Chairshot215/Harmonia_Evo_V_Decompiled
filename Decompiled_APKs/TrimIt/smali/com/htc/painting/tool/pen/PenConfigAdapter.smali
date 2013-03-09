.class public abstract Lcom/htc/painting/tool/pen/PenConfigAdapter;
.super Ljava/lang/Object;
.source "PenConfigAdapter.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "PenProperties"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllPens()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/tool/pen/PenProps;",
            ">;"
        }
    .end annotation
.end method
