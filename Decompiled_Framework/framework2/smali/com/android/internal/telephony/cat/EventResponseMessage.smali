.class public Lcom/android/internal/telephony/cat/EventResponseMessage;
.super Ljava/lang/Object;
.source "EventResponseMessage.java"


# instance fields
.field eventType:I

.field language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/EventResponseMessage;->language:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/EventResponseMessage;->language:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    return-void
.end method


# virtual methods
.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/EventResponseMessage;->language:Ljava/lang/String;

    return-void
.end method
