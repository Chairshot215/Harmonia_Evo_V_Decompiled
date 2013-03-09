.class public interface abstract Lorg/apache/xml/serializer/SerializerTrace;
.super Ljava/lang/Object;
.source "SerializerTrace.java"


# static fields
.field public static final EVENTTYPE_CDATA:I = 0xa

.field public static final EVENTTYPE_CHARACTERS:I = 0x5

.field public static final EVENTTYPE_COMMENT:I = 0x8

.field public static final EVENTTYPE_ENDDOCUMENT:I = 0x2

.field public static final EVENTTYPE_ENDELEMENT:I = 0x4

.field public static final EVENTTYPE_ENTITYREF:I = 0x9

.field public static final EVENTTYPE_IGNORABLEWHITESPACE:I = 0x6

.field public static final EVENTTYPE_OUTPUT_CHARACTERS:I = 0xc

.field public static final EVENTTYPE_OUTPUT_PSEUDO_CHARACTERS:I = 0xb

.field public static final EVENTTYPE_PI:I = 0x7

.field public static final EVENTTYPE_STARTDOCUMENT:I = 0x1

.field public static final EVENTTYPE_STARTELEMENT:I = 0x3


# virtual methods
.method public abstract fireGenerateEvent(I)V
.end method

.method public abstract fireGenerateEvent(ILjava/lang/String;)V
.end method

.method public abstract fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
.end method

.method public abstract fireGenerateEvent(I[CII)V
.end method

.method public abstract hasTraceListeners()Z
.end method
