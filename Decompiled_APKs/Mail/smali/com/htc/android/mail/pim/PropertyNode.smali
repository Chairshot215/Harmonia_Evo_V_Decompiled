.class public Lcom/htc/android/mail/pim/PropertyNode;
.super Ljava/lang/Object;
.source "PropertyNode.java"


# instance fields
.field public paraMap:Landroid/content/ContentValues;

.field public paraMap_TYPE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propName:Ljava/lang/String;

.field public propValue:Ljava/lang/String;

.field public propValue_byts:[B

.field public propValue_vector:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/PropertyNode;->paraMap_TYPE:Ljava/util/ArrayList;

    return-void
.end method
