.class public Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.super Ljava/lang/Object;
.source "XmlEntryGDataSerializer.java"

# interfaces
.implements Lcom/google/wireless/gdata2/serializer/GDataSerializer;


# static fields
.field private static final EMPTY_ENTRY:Lcom/google/wireless/gdata2/data/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    sput-object v0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->EMPTY_ENTRY:Lcom/google/wireless/gdata2/data/Entry;

    return-void
.end method
