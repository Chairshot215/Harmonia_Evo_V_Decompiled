.class public Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlEventEntryGDataSerializer.java"


# static fields
.field private static final EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>()V

    sput-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 50
    sget-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 51
    sget-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setVisibility(B)V

    .line 52
    sget-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTransparency(B)V

    .line 53
    return-void
.end method
