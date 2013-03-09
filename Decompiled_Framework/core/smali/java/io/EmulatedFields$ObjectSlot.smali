.class Ljava/io/EmulatedFields$ObjectSlot;
.super Ljava/lang/Object;
.source "EmulatedFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/EmulatedFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectSlot"
.end annotation


# instance fields
.field defaulted:Z

.field field:Ljava/io/ObjectStreamField;

.field fieldValue:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method


# virtual methods
.method public getField()Ljava/io/ObjectStreamField;
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method public getFieldValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    return-object v0
.end method
