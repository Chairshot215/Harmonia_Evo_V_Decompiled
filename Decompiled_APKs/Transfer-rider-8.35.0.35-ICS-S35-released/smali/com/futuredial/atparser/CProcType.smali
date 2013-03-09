.class public abstract Lcom/futuredial/atparser/CProcType;
.super Ljava/lang/Object;
.source "CProcType.java"


# instance fields
.field public m_properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/CProcType;->m_properties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract proc_value(Ljava/lang/String;)Ljava/lang/String;
.end method
