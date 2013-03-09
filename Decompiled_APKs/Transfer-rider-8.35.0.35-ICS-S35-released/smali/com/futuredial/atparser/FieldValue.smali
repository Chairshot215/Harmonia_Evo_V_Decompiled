.class public Lcom/futuredial/atparser/FieldValue;
.super Ljava/lang/Object;
.source "FieldValue.java"


# instance fields
.field public properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;"
        }
    .end annotation
.end field

.field public val:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "_val"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "_val"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, _properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    .line 23
    return-void
.end method
