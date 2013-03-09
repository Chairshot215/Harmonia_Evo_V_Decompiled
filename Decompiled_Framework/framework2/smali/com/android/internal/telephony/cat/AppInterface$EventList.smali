.class public Lcom/android/internal/telephony/cat/AppInterface$EventList;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventList"
.end annotation


# static fields
.field public static final BROWSER_TERMINATION:I = 0x8

.field public static final CALL_CONNECTED:I = 0x1

.field public static final CALL_DISCONNECTED:I = 0x2

.field public static final CARD_READER_STATUS:I = 0x6

.field public static final CHANNEL_STATUS:I = 0xa

.field public static final DATA_AVAILABLE:I = 0x9

.field public static final IDLE_SCREEN_AVAILABLE:I = 0x5

.field public static final LANGUAGE_SELECTION:I = 0x7

.field public static final LOCATION_STATUS:I = 0x3

.field public static final MT_CALL:I = 0x0

.field public static final USER_ACTIVITY:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
