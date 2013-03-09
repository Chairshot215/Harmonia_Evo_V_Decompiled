.class public Lcom/android/internal/telephony/APNParam$RatType;
.super Ljava/lang/Object;
.source "APNParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/APNParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RatType"
.end annotation


# static fields
.field public static final EHRPD:I = 0x2

.field public static final LTE:I = 0x4

.field public static final NONE:I = 0x0

.field public static final _3GPP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/APNParam;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/APNParam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/APNParam$RatType;->this$0:Lcom/android/internal/telephony/APNParam;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
