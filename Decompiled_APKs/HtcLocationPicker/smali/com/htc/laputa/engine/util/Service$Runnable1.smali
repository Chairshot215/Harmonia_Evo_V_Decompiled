.class public abstract Lcom/htc/laputa/engine/util/Service$Runnable1;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Runnable1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final mValue1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, this:Lcom/htc/laputa/engine/util/Service$Runnable1;,"Lcom/htc/laputa/engine/util/Service$Runnable1<TV1;>;"
    .local p1, value:Ljava/lang/Object;,"TV1;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$Runnable1;->mValue1:Ljava/lang/Object;

    .line 741
    return-void
.end method
