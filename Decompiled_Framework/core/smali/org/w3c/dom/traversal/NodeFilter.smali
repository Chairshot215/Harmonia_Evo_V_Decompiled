.class public interface abstract Lorg/w3c/dom/traversal/NodeFilter;
.super Ljava/lang/Object;
.source "NodeFilter.java"


# static fields
.field public static final FILTER_ACCEPT:S = 0x1s

.field public static final FILTER_REJECT:S = 0x2s

.field public static final FILTER_SKIP:S = 0x3s

.field public static final SHOW_ALL:I = -0x1

.field public static final SHOW_ATTRIBUTE:I = 0x2

.field public static final SHOW_CDATA_SECTION:I = 0x8

.field public static final SHOW_COMMENT:I = 0x80

.field public static final SHOW_DOCUMENT:I = 0x100

.field public static final SHOW_DOCUMENT_FRAGMENT:I = 0x400

.field public static final SHOW_DOCUMENT_TYPE:I = 0x200

.field public static final SHOW_ELEMENT:I = 0x1

.field public static final SHOW_ENTITY:I = 0x20

.field public static final SHOW_ENTITY_REFERENCE:I = 0x10

.field public static final SHOW_NOTATION:I = 0x800

.field public static final SHOW_PROCESSING_INSTRUCTION:I = 0x40

.field public static final SHOW_TEXT:I = 0x4


# virtual methods
.method public abstract acceptNode(Lorg/w3c/dom/Node;)S
.end method
