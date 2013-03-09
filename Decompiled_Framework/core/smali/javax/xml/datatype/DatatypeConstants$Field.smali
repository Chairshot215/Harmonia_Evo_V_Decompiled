.class public final Ljavax/xml/datatype/DatatypeConstants$Field;
.super Ljava/lang/Object;
.source "DatatypeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/datatype/DatatypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private final id:I

.field private final str:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->str:Ljava/lang/String;

    iput p2, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->id:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->str:Ljava/lang/String;

    return-object v0
.end method
