.class public final Lcom/futuredial/rim/RIMFieldID$CalRecurType;
.super Ljava/lang/Object;
.source "RIMFieldID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/rim/RIMFieldID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CalRecurType"
.end annotation


# static fields
.field public static final RIM_CAL_RECUR_DAILY:I = 0x1

.field public static final RIM_CAL_RECUR_MONTHLY_ONDATE:I = 0x3

.field public static final RIM_CAL_RECUR_MONTHLY_ONDAY:I = 0x4

.field public static final RIM_CAL_RECUR_WEEKLY:I = 0xc

.field public static final RIM_CAL_RECUR_YEARLY_ONDATE:I = 0x5

.field public static final RIM_CAL_RECUR_YEARLY_ONDAY:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/futuredial/rim/RIMFieldID;


# direct methods
.method public constructor <init>(Lcom/futuredial/rim/RIMFieldID;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/futuredial/rim/RIMFieldID$CalRecurType;->this$0:Lcom/futuredial/rim/RIMFieldID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
