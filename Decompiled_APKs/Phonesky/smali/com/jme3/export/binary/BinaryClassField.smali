.class Lcom/jme3/export/binary/BinaryClassField;
.super Ljava/lang/Object;
.source "BinaryClassField.java"


# instance fields
.field alias:B

.field name:Ljava/lang/String;

.field type:B


# direct methods
.method constructor <init>(Ljava/lang/String;BB)V
    .locals 0
    .parameter "name"
    .parameter "alias"
    .parameter "type"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/jme3/export/binary/BinaryClassField;->name:Ljava/lang/String;

    .line 98
    iput-byte p2, p0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    .line 99
    iput-byte p3, p0, Lcom/jme3/export/binary/BinaryClassField;->type:B

    .line 100
    return-void
.end method
