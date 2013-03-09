.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$ContentType;
.super Ljava/lang/Object;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentType"
.end annotation


# static fields
.field public static final COMBINED_CALL_HISTORY:I = 0x5

.field public static final INCOMING_CALL_HISTORY:I = 0x2

.field public static final MISSED_CALL_HISTORY:I = 0x4

.field public static final OUTGOING_CALL_HISTORY:I = 0x3

.field public static final PHONEBOOK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
