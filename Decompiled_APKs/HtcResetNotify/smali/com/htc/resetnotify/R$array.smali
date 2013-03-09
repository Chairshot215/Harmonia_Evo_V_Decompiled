.class public final Lcom/htc/resetnotify/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/resetnotify/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static final normal_reboot_pattern:I = 0x7f020002

.field public static final poweroff_pattern:I = 0x7f020003

.field public static final radio_crash_pattern:I = 0x7f020004

.field public static final reboot_reason_abnormal:I = 0x7f020000

.field public static final reboot_reason_normal:I = 0x7f020001


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
