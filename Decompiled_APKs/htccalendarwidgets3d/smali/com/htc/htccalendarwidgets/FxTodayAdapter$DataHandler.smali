.class Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;
.super Landroid/os/Handler;
.source "FxTodayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/FxTodayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/FxTodayAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x2000

    .line 85
    move-object v4, p1

    .line 86
    .local v4, message:Landroid/os/Message;
    iget v6, v4, Landroid/os/Message;->arg1:I

    int-to-long v0, v6

    .line 87
    .local v0, contact_id:J
    iget v5, v4, Landroid/os/Message;->arg2:I

    .line 88
    .local v5, position:I
    iget v6, v4, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    invoke-virtual {v6, v5}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v3

    .line 92
    .local v3, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-eqz v3, :cond_0

    .line 93
    iget-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    .line 94
    iget-object v6, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 95
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$100(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarSmallURL_:Ljava/lang/String;

    sget-object v8, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v2, v6, v7, v8}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 96
    .local v2, dw:Lcom/htc/graphics/drawable/UrlDrawable;
    iget-object v6, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    iget-object v7, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    iget-object v8, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    iget-object v9, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 97
    iput-object v2, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    .line 100
    .end local v2           #dw:Lcom/htc/graphics/drawable/UrlDrawable;
    :cond_1
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 101
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    invoke-static {v7}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 107
    .end local v3           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :pswitch_1
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    invoke-virtual {v6, v5}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v3

    .line 108
    .restart local v3       #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-eqz v3, :cond_0

    .line 109
    iget-object v6, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 110
    iget-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    .line 111
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$100(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarSmallURL_:Ljava/lang/String;

    sget-object v8, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v2, v6, v7, v8}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 112
    .restart local v2       #dw:Lcom/htc/graphics/drawable/UrlDrawable;
    iget-object v6, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    iget-object v7, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    iget-object v8, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    iget-object v9, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 113
    iput-object v2, v3, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    .line 116
    .end local v2           #dw:Lcom/htc/graphics/drawable/UrlDrawable;
    :cond_2
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->this$0:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    #getter for: Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    invoke-static {v7}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
