.class public Lcom/htc/fusion/fx/controls/FxListViewEvent;
.super Ljava/lang/Object;
.source "FxListViewEvent.java"


# static fields
.field public static final FLICK_END:I = 0x4

.field public static final FLICK_START:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final PAN_END:I = 0x2

.field public static final PAN_START:I = 0x1

.field public static final SELECTED_INDEX_CHANGED:I = 0x1e

.field public static final SYNC_CALLBACK:I = 0x14


# instance fields
.field public eventType:I

.field public firstVisibleIndex:I

.field public lastVisibleIndex:I

.field public selectedIndex:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    iput p2, p0, Lcom/htc/fusion/fx/controls/FxListViewEvent;->firstVisibleIndex:I

    iput p3, p0, Lcom/htc/fusion/fx/controls/FxListViewEvent;->lastVisibleIndex:I

    iput p4, p0, Lcom/htc/fusion/fx/controls/FxListViewEvent;->selectedIndex:I

    return-void
.end method
