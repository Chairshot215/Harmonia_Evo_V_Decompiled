.class public final Lcom/futuredial/rim/RIMFieldID$CalFieldID;
.super Ljava/lang/Object;
.source "RIMFieldID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/rim/RIMFieldID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CalFieldID"
.end annotation


# static fields
.field public static final RIM_CAL_CATEGORIES:I = 0x11

.field public static final RIM_CAL_DESCRIPTION:I = 0x2

.field public static final RIM_CAL_ENDTIME:I = 0x7

.field public static final RIM_CAL_EVENT_ALLDAY:I = 0xff

.field public static final RIM_CAL_EVENT_MARKASPRIVATE:I = 0x28

.field public static final RIM_CAL_EVENT_REMINDERTIME:I = 0x5

.field public static final RIM_CAL_EVENT_SHOWTIMEAS:I = 0x1c

.field public static final RIM_CAL_EVENT_UNKOWN3:I = 0x1b

.field public static final RIM_CAL_EVENT_UNKOWN4:I = 0x2a

.field public static final RIM_CAL_EVENT_UNKOWN5:I = 0x2b

.field public static final RIM_CAL_EVENT_UNKOWN6:I = 0x2c

.field public static final RIM_CAL_EVENT_UNKOWN7:I = 0x1f

.field public static final RIM_CAL_EVENT_UNKOWN8:I = 0x1e

.field public static final RIM_CAL_LOCATION:I = 0x4

.field public static final RIM_CAL_NOTE:I = 0x3

.field public static final RIM_CAL_RECURTYPE:I = 0xc

.field public static final RIM_CAL_STARTTIME:I = 0x6

.field public static final RIM_CAL_TODO_DUE_STATUS:I = 0x8

.field public static final RIM_CAL_TODO_PRIORITY:I = 0xa

.field public static final RIM_CAL_TODO_REMINDERTIME:I = 0xf

.field public static final RIM_CAL_TODO_REMINDERTYPE:I = 0xe

.field public static final RIM_CAL_TODO_STATUS:I = 0x9

.field public static final RIM_CAL_TODO_UNKOWN2:I = 0x10

.field public static final RIM_CAL_TYPE:I = 0x1

.field public static final RIM_CAL_UNKOWN3:I = 0x12


# instance fields
.field final synthetic this$0:Lcom/futuredial/rim/RIMFieldID;


# direct methods
.method public constructor <init>(Lcom/futuredial/rim/RIMFieldID;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/futuredial/rim/RIMFieldID$CalFieldID;->this$0:Lcom/futuredial/rim/RIMFieldID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
