.class public interface abstract Lcom/futuredial/atparser/CIRecsProcType;
.super Ljava/lang/Object;
.source "CIRecsProcType.java"


# static fields
.field public static final itemleft:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/atparser/CIRecsProcType;->itemleft:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
.end method
