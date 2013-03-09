.class public Ljava/text/Format$Field;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d7fbbd383b0f9bL


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    return-void
.end method
