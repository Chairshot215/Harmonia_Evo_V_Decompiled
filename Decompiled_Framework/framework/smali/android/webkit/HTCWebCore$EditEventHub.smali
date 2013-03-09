.class Landroid/webkit/HTCWebCore$EditEventHub;
.super Ljava/lang/Object;
.source "HTCWebCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTCWebCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditEventHub"
.end annotation


# static fields
.field static final ALIGN_CENTER:I = 0x203

.field static final ALIGN_JUSTIFIED:I = 0x204

.field static final ALIGN_LEFT:I = 0x205

.field static final ALIGN_RIGHT:I = 0x206

.field static final AUTO_EXTEND_TO_WORD:I = 0x216

.field static final CANCEL_ANCHOR_SPAN:I = 0x223

.field static final COMPOSING_TEXT:I = 0x1f6

.field static final COPY:I = 0x21c

.field static final CUT:I = 0x21d

.field static final DELET_SURROUNDING_TEXT:I = 0x1f7

.field static final DO_SELECTION:I = 0x213

.field static final DO_SELECTION_INDX:I = 0x214

.field static final END_MATCH_PHRASE:I = 0x218

.field static final EXPORT_HTML:I = 0x1fc

.field static final EXPORT_HTML_CALLBACK:I = 0x1fd

.field static final FIND_CONTINOUS_BR_FROM_END:I = 0x221

.field private static final FIRST_MSG:I = 0x1f4

.field static final GET_HTML_STRING:I = 0x1f9

.field static final INFORM_COLOR_CHANGED:I = 0x20a

.field static final INSERT_ANCHOR_SPAN:I = 0x222

.field static final INSERT_HTML:I = 0x1fa

.field static final INSERT_HTML_ANCHOR_SPAN:I = 0x224

.field static final INSERT_HTML_STRING:I = 0x1fb

.field static final INSERT_HTML_TO_THE_END:I = 0x220

.field static final INSERT_IMAGE:I = 0x1fe

.field static final INSERT_TEXT:I = 0x1f5

.field private static final LAST_MSG:I = 0x225

.field static final MATCH_PHRASE:I = 0x217

.field static final MODIFY_SELECTION:I = 0x212

.field static final N_CLICK:I = 0x1f8

.field static final PAINT_CARET:I = 0x20b

.field static final PASTE_LATEST_CONTENT_FROM_CLIPBOARD:I = 0x225

.field static final PASTE_PLAIN_TEXT:I = 0x21f

.field static final PASTE_WITH_STYLE:I = 0x21e

.field static final SELECT_CJKS_WORD:I = 0x215

.field static final SET_BACK_COLOR:I = 0x208

.field static final SET_EDITABLE:I = 0x1f4

.field static final SET_FONT_SIZE:I = 0x209

.field static final SET_FORE_COLOR:I = 0x207

.field static final TOGGLE_BOLD:I = 0x1ff

.field static final TOGGLE_ITALIC:I = 0x201

.field static final TOGGLE_STRIKETHROUGH:I = 0x202

.field static final TOGGLE_UNDERLINE:I = 0x200


# instance fields
.field public mLastContentChangedMsg:I

.field private nodePtr:I

.field private nodeText:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/HTCWebCore;


# direct methods
.method constructor <init>(Landroid/webkit/HTCWebCore;)V
    .locals 1

    iput-object p1, p0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    return-void
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 44

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x1fa

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x20b

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeInsertHtmlToTheEnd(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/webkit/HTCWebCore;->nativeFindContinuousBRFromEnd(I)I

    move-result v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    :goto_1
    #calls: Landroid/webkit/HTCWebCore;->nativeModifySelection(Z)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$000(Landroid/webkit/HTCWebCore;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/graphics/Point;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v7, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/HTCWebCore;->nativeDoWordSelection(II)V
    invoke-static {v3, v4, v7}, Landroid/webkit/HTCWebCore;->access$100(Landroid/webkit/HTCWebCore;II)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v36

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v8, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    const/4 v3, 0x1

    :goto_2
    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelection(IIZ)V
    invoke-static {v4, v7, v8, v3}, Landroid/webkit/HTCWebCore;->access$200(Landroid/webkit/HTCWebCore;IIZ)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v29, v3

    check-cast v29, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    aget v7, v29, v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    aget v9, v29, v9

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v4, v7, v8, v9}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    move/from16 v0, v34

    if-eq v3, v0, :cond_5

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    move/from16 v0, v34

    move/from16 v1, v34

    invoke-virtual {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v39, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v39

    if-lt v0, v3, :cond_6

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v39, v3, -0x1

    :cond_6
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$400(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    :cond_7
    :goto_3
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v38

    const/4 v3, 0x0

    aget v3, v38, v3

    const/4 v4, 0x1

    aget v4, v38, v4

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, 0x0

    aget v4, v38, v4

    const/4 v7, 0x1

    aget v7, v38, v7

    move/from16 v0, v34

    move/from16 v1, v34

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    add-int/lit8 v4, v39, 0x1

    move/from16 v0, v34

    move/from16 v1, v39

    move/from16 v2, v34

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v0, v1, v2, v4}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto :goto_3

    :pswitch_7
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    sub-int v3, v6, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v24

    if-le v6, v5, :cond_a

    const/16 v31, 0x1

    :goto_4
    const/4 v3, 0x2

    move/from16 v0, v24

    if-gt v0, v3, :cond_c

    if-eqz v31, :cond_b

    :goto_5
    add-int v5, v5, v24

    :goto_6
    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v4, v7, v8, v5}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    :goto_7
    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$500(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x216

    const/4 v7, 0x0

    const-wide/16 v8, 0x21

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_a
    const/16 v31, 0x0

    goto :goto_4

    :cond_b
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    goto :goto_5

    :cond_c
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v32

    if-eqz v31, :cond_d

    :goto_8
    add-int v5, v5, v32

    goto :goto_6

    :cond_d
    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v4, v5, v7, v8}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto :goto_7

    :pswitch_8
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$400(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    move/from16 v0, v34

    if-eq v3, v0, :cond_10

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    move/from16 v0, v34

    move/from16 v1, v34

    invoke-virtual {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v39, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v39

    if-lt v0, v3, :cond_11

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v39, v3, -0x1

    :cond_11
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v38

    const/4 v3, 0x0

    aget v3, v38, v3

    const/4 v4, 0x1

    aget v4, v38, v4

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, 0x0

    aget v4, v38, v4

    const/4 v7, 0x1

    aget v7, v38, v7

    move/from16 v0, v34

    move/from16 v1, v34

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_12

    const/4 v3, 0x1

    :goto_9
    #calls: Landroid/webkit/HTCWebCore;->nativeSetEditable(Z)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$600(Landroid/webkit/HTCWebCore;Z)V

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x0

    goto :goto_9

    :pswitch_b
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_13

    const/4 v3, 0x1

    :goto_a
    #calls: Landroid/webkit/HTCWebCore;->nativeShouldPaintingCaret(Z)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$700(Landroid/webkit/HTCWebCore;Z)V

    const/4 v3, -0x5

    const/4 v4, -0x5

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeContentInvalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_13
    const/4 v3, 0x0

    goto :goto_a

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeInsert(ILjava/lang/String;)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCore;->access$800(Landroid/webkit/HTCWebCore;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    #calls: Landroid/webkit/HTCWebCore;->nativeComposing(ILjava/lang/String;IIII)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/HTCWebCore;->access$900(Landroid/webkit/HTCWebCore;ILjava/lang/String;IIII)V

    goto/16 :goto_0

    :cond_14
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeComposing(ILjava/lang/String;IIII)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/HTCWebCore;->access$900(Landroid/webkit/HTCWebCore;ILjava/lang/String;IIII)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v29, v3

    check-cast v29, [I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    aget v16, v29, v3

    const/4 v3, 0x1

    aget v17, v29, v3

    const/4 v3, 0x2

    aget v18, v29, v3

    const/4 v3, 0x3

    aget v19, v29, v3

    #calls: Landroid/webkit/HTCWebCore;->nativeDeleteSurrounding(IIIII)V
    invoke-static/range {v14 .. v19}, Landroid/webkit/HTCWebCore;->access$1000(Landroid/webkit/HTCWebCore;IIIII)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetHtmlString()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1100(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v30

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertHtmlString(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$1200(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeExportHtml(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$1300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeExportHtml(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$1300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertHtml(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$1400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/EditableWebView$ImageInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_src:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v7, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_width:I

    move-object/from16 v0, v28

    iget v8, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_height:I

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertImage(Ljava/lang/String;II)V
    invoke-static {v3, v4, v7, v8}, Landroid/webkit/HTCWebCore;->access$1500(Landroid/webkit/HTCWebCore;Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeInformColorChanged()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1600(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeCopy()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1700(Landroid/webkit/HTCWebCore;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedPlainText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1800(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedStyleText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1900(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_17

    if-eqz v41, :cond_17

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v33, :cond_15

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    const-string v33, ""

    :cond_16
    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v23

    new-instance v3, Landroid/content/ClipData$Item;

    move-object/from16 v0, v41

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->setCopiedStyleText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeCut()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2100(Landroid/webkit/HTCWebCore;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedPlainText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1800(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedStyleText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1900(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1a

    if-eqz v41, :cond_1a

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v33, :cond_18

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    const-string v33, ""

    :cond_19
    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v23

    new-instance v3, Landroid/content/ClipData$Item;

    move-object/from16 v0, v41

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->setCopiedStyleText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v42

    if-eqz v42, :cond_1

    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    const-string v3, "\n"

    const-string v4, "<br>"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v40

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v42

    if-eqz v42, :cond_1

    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v42

    if-eqz v42, :cond_1

    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePastePlainText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v42

    if-eqz v42, :cond_1

    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v42

    if-eqz v42, :cond_1

    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePastePlainText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    #setter for: Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$2502(Landroid/webkit/HTCWebCore;Landroid/os/Message;)Landroid/os/Message;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v43

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertAnchorSpan(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$2600(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeCancelAnchorSpan()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2700(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v26, v3

    check-cast v26, Ljava/lang/String;

    const-string v3, "KENLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<MSG> INSERT_HTML_ANCHOR_SPAN: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v26

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertHtmlContainsAnchorSpan(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$2800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleBold()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2900(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleUnderline()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3000(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleItalic()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3100(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleStrikethrough()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3200(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignCenter()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3300(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignJustified()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3400(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignLeft()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3500(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignRight()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3600(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeSetForeColor(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$3700(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeSetBackColor(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$3800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/HTCWebCore;->nativeSetFontSize(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$3900(Landroid/webkit/HTCWebCore;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_15
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_18
    .end packed-switch
.end method

.method isEditMessage(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x225

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
