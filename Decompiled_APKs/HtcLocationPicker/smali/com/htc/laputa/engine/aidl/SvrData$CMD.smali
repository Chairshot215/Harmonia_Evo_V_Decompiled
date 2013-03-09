.class public Lcom/htc/laputa/engine/aidl/SvrData$CMD;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMD"
.end annotation


# static fields
.field public static final ADDR2GEOCODE:I = 0x8

.field public static final ADDRECENT:I = 0x6

.field public static final ADDRESSSTEPSEARCH:I = 0x9

.field public static final ADMINENUM:I = 0x4

.field public static final CATEGORYENUM:I = 0x3

.field public static final CATEGORYQUERY:I = 0xb

.field public static final CLEARRECENT:I = 0xc

.field public static final DATAENUM:I = 0x2

.field public static final DEBUGCMD:I = 0xf

.field public static final DELETERECENT:I = 0x12

.field public static final FUZZYSEARCH:I = 0xe

.field public static final GEOCODE2ADDR:I = 0x7

.field public static final GEOCODE2COUNTRYCODE:I = 0x13

.field public static final GETADMIN:I = 0x5

.field public static final GETENGINESTATUS:I = 0x10

.field public static final GETMAPCOVERAGE:I = 0xd

.field public static final LOCATIONSEARCH:I = 0x1

.field public static final NEARBYSEARCH:I = 0x0

.field public static final RENDERSTILLIMAGE:I = 0x64

.field public static final STORE:I = 0xa

.field public static final TRANSFORMTOMAPWGS:I = 0x11


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 4
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$CMD;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
