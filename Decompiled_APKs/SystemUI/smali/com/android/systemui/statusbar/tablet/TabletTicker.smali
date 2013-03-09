.class public Lcom/android/systemui/statusbar/tablet/TabletTicker;
.super Landroid/os/Handler;
.source "TabletTicker.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# static fields
.field private static final ADVANCE_DELAY:I = 0x1388

.field private static final CLICKABLE_TICKER:Z = true

.field private static final MSG_ADVANCE:I = 0x1

.field private static final QUEUE_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "StatusBar.TabletTicker"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private mContext:Landroid/content/Context;

.field private mCurrentKey:Landroid/os/IBinder;

.field private mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

.field private mCurrentView:Landroid/view/View;

.field private mKeys:[Landroid/os/IBinder;

.field private final mLargeIconHeight:I

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

.field private mQueuePos:I

.field private mWindow:Landroid/view/ViewGroup;

.field private mWindowShouldClose:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-array v1, v2, [Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    new-array v1, v2, [Lcom/android/internal/statusbar/StatusBarNotification;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLargeIconHeight:I

    return-void
.end method

.method private advance()V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentKey:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->dequeue()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->makeTickerView(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->makeWindow()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindowShouldClose:Z

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->dequeue()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dequeue()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentKey:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aput-object v5, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aput-object v5, v2, v0

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    :cond_1
    return-void
.end method

.method private makeTickerView(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .locals 26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const v16, 0x7f0e00d3

    :goto_0
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_3

    const v2, 0x7f030022

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    const v2, 0x7f0e00d4

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_1
    if-nez v13, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v2, "StatusBar.TabletTicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t inflate view for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_2
    return-object v2

    :cond_0
    const v16, 0x7f0e00d1

    goto :goto_0

    :catch_0
    move-exception v11

    move-object v12, v11

    goto :goto_1

    :cond_1
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const v2, 0x7f0e00ac

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarHeight()I

    move-result v23

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v23

    if-gt v2, v0, :cond_5

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_4
    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v10, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v2, v10, v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-result-object v8

    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletTicker;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    move-object v2, v14

    goto :goto_2

    :cond_3
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    const v2, 0x7f030021

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v4, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    const/4 v6, 0x0

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0e00d2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "tickerView==null && tickerText==null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLargeIconHeight:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private makeWindow()Landroid/view/ViewGroup;
    .locals 8

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0038

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v4, 0x308

    or-int/lit8 v4, v4, 0x20

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLargeIconHeight:I

    const/16 v3, 0x7de

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x55

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const-string v2, "NotificationTicker"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    aput-object p2, v0, v1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessage(I)Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    :cond_1
    return-void
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindowShouldClose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindowShouldClose:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->doneTicking()V

    :cond_0
    return-void
.end method

.method public halt()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->advance()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public remove(Landroid/os/IBinder;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentKey:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->removeMessages(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_3

    :goto_2
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aput-object v5, v1, v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aput-object v5, v1, v4

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
