---
title: Android-V
date: 2014-04-28 18:47:23
tags:
---

# view
## animation
### 帧动画 frame anim
动画类 AnimationDrawable  
配置xml文件  animation-list  
animation自定义 重写方法applyTransformation()改变Transformation
启动 setBackground()

### 补间动画 tween anim
动画类 AlphaAnimation , RotateAnimation, ScaleAnimation, TranslateAnimation 
配置xml文件 alpha, rotate, scale, translate
启动 AnimationUtils.loadAnimation（context，R.anim.x）;
#### alpha
```
<?xml version="1.0" encoding="utf-8"?>  
<set xmlns:android="http://schemas.android.com/apk/res/android"  
    android:interpolator="@android:anim/accelerate_interpolator">  
    <!-- fromAlpha和toAlpha是起始透明度和结束时透明度 -->  
    <alpha  
        android:fromAlpha="1.0"  
        android:toAlpha="0.0"  
        android:startOffset="500"  
        android:duration="500"/>  
</set> 
```
#### rotate
```
<?xml version="1.0" encoding="utf-8"?>  
<set xmlns:android="http://schemas.android.com/apk/res/android"  
    android:interpolator="@android:anim/accelerate_interpolator">  
    <!--  
        fromDegrees:开始的角度  
        toDegrees：结束的角度，+表示是正的  
        当角度为负数——表示逆时针旋转  
        当角度为正数——表示顺时针旋转  
        pivotX：用于设置旋转时的x轴坐标  
        例  
           1)当值为"50"，表示使用绝对位置定位  
           2)当值为"50%"，表示使用相对于控件本身定位  
           3)当值为"50%p"，表示使用相对于控件的父控件定位  
        pivotY：用于设置旋转时的y轴坐标  
      -->  
    <rotate  
        android:fromDegrees="0"  
        android:toDegrees="+360"  
        android:pivotX="50%"  
        android:pivotY="50%"  
        android:duration="1000"/>  
</set> 
```

#### scale
```
<?xml version="1.0" encoding="utf-8"?>  
<set xmlns:android="http://schemas.android.com/apk/res/android"  
    android:interpolator="@android:anim/accelerate_interpolator">  
   <!--  
       起始x轴坐标  
           止x轴坐标  
           始y轴坐标  
           止y轴坐标  
           轴的坐标  
           轴的坐标  
     -->  
   <scale  
       android:fromXScale="1.0"  
       android:toXScale="0.0"  
       android:fromYScale="1.0"  
       android:toYScale="0.0"  
       android:pivotX="50%"  
       android:pivotY="50%"  
       android:duration="1000"/>  
</set>  
```
#### translate
```
<?xml version="1.0" encoding="utf-8"?>  
<set xmlns:android="http://schemas.android.com/apk/res/android"  
    android:interpolator="@android:anim/accelerate_interpolator">  
    <!--  
           始x轴坐标  
           止x轴坐标  
           始y轴坐标  
           止y轴坐标  
      -->  
    <translate  
        android:fromXDelta="0%"  
        android:toXDelta="100%"  
        android:fromYDelta="0%"  
        android:toYDelta="100%"  
        android:duration="2000"/>  
</set>  
```



### 属性动画 property anim
[nineoldandroids sample](https://github.com/JakeWharton/NineOldAndroids/tree/master/sample/src/com/jakewharton/nineoldandroids/sample)
动画类 valueAnimator，objectAnimator
配置xml文件 alpha, rotate, scale, translate
启动 AnimatorInflater.loadAnimator(context, R.anim.x);
#### valueAnimator  
addupdateListener() {  属性改变 }  

#### objectAnimator  
属性 xxx   
setX() , getX()  
_offx 实例化

#### offint , offfloat, offobject, offproperty , propertyvalueHolder, setCurrentPlayTime(long playTime)

### interpolator
差值器，控制动画的变化频率 （ ～0  ----  ～1）相当于加速度 a 。
根据系统 SystemClock.uptimeMillis()（每次调用都获取）
1 计算出在(0 ~ duration ) 哪个时间点
2 再计算出normalizedTime （0 ～ 1）百分比
3 input 为 normalizedTime（0～ 1）
4 input 为 delta time ／ duration (0 ~ 1)
5 getInterpolation(float input)。
帧动画 补间动画 android.view.animation.Interpolator在view包下
属性动画 android.animation.TimeInterpolator 在animation包下
4.0 之后 Interpolator 继承自TimeInterpolator

### Transformation
animation中通过applyTransformation() 来改变transformation 来作动画

### 帧数
游戏一般到60 帧才流畅。 animator 睡眠时间是10ms 即100帧每秒。这个帧数可以调节静态方法ValueAnimator.setFrameDelay(long frameDelay)。

### TypeEvaluator
控制做动画的view的位置。
根据Interpolator 计算出的fraction 和初始 、结束值来计算view 的属性值。
默认是 IntEvaluator 和 FloatEvaluator

## view 重绘的时机
### 主动重绘
invalidate()；
postinvalidate()；

### 被动重绘
被动重绘的原则: view变化就会重绘
#### view状态变化
focus
enable
selected
press
visiable

#### view结构变化
增减 子view
宽高大小变化

## view绘制过程
viewroot 发异步消息, 由Decorview开始
### 1.measure 确定大小
onmeasure（）可以改变measure大小
setMeasureDimension（）设置大小
### 2.layout 确定位置
onlayout（）可以改变view位置
setFrame（）设置（t，l，r，b）值
### 3.draw 绘制
* 画背景
* ondraw（）绘制视图本身
* dispatchDraw（）绘制子视图
* ondrawScrollBar（）绘滚动条
### invalidated调用时机
重draw调用 3
### requestlayout调用时机
重新measure调用 1，layout调用 2

## View invalidate方法研究
Invalidate 英文废弃，无效的意思。不知道写api的人为什么不用redraw之类的更直接的词语而用这个词语。
大家都知道，view 调用 Invalidate 方法会导致重绘。
那么具体的情况是什么呢？
我写了一个demo去研究这个方法的作用。[下载](http://download.csdn.net/detail/javalive09/6867681)
在VISIBLE的情况下：
### 一个非容器类的view 调用Invalidate():
会调用 此view的onDraw() ,重绘它自己。
### 一个容器类的view调用Invalidate():
如果这个容器有背景，会调用 此view的onDraw() ,重绘它自己。
如果这个容器没有背景，不会调用 此view的onDraw() ,重绘它自己。
### 结论
不是调用Invalidate()就一定会导致重绘。

## addView 源码调用顺序的迷惑
addView 源码中方法调用顺序的迷惑
```
public void addView(View child,int index, LayoutParams params) {  
        if (DBG) {  
            System.out.println(this +" addView");  
        }  
  
        // addViewInner() will call child.requestLayout() when setting the new LayoutParams  
        // therefore, we call requestLayout() on ourselves before, so that the child's request  
        // will be blocked at our level  
        requestLayout();  
        invalidate(true);  
        addViewInner(child, index, params, false);  
    }  
```
为什么在addViewInner();  前要使用requestLayout();  addViewInner里面会调用requestLayout();  这样逻辑上是不是重复了。
```
public void requestLayout() {  
    mPrivateFlags |= FORCE_LAYOUT;  
    mPrivateFlags |= INVALIDATED;  
  
    if (mLayoutParams != null) {  
        mLayoutParams.onResolveLayoutDirection(getResolvedLayoutDirection());  
    }  
  
    if (mParent != null && !mParent.isLayoutRequested()) {  
        mParent.requestLayout();  
    }  
}  
```
requestLayout();的很重要的一步操作是给mPrivateFlags赋上FORCE_LAYOUT值。
if (mParent != null && !mParent.isLayoutRequested())  这一步逻辑是。
```
public boolean isLayoutRequested() {  
    return (mPrivateFlags & FORCE_LAYOUT) == FORCE_LAYOUT;  
}  
```
由于requestLayout() 是从当前view往上传递来申请重新layout布局。如果父容器的mPrivateFlags不包含FORCE_LAYOUT。执行父容器的requestLayout();  
这里父容器mPrivateFlags包含FORCE_LAYOUT，所以不会向上传递申请重新layout布局。
那么 mPrivateFlags 什么时候清空FORCE_LAYOUT值呢？在view 的layout 方法最后：
```
public void layout(int l, int t, int r, int b) {  
    int oldL = mLeft;  
    int oldT = mTop;  
    int oldB = mBottom;  
    int oldR = mRight;  
    boolean changed = setFrame(l, t, r, b);  
    if (changed || (mPrivateFlags & LAYOUT_REQUIRED) == LAYOUT_REQUIRED) {  
        onLayout(changed, l, t, r, b);  
        mPrivateFlags &= ~LAYOUT_REQUIRED;  
  
        ListenerInfo li = mListenerInfo;  
        if (li != null && li.mOnLayoutChangeListeners != null) {  
            ArrayList<OnLayoutChangeListener> listenersCopy =  
                    (ArrayList<OnLayoutChangeListener>)li.mOnLayoutChangeListeners.clone();  
            int numListeners = listenersCopy.size();  
            for (int i = 0; i < numListeners; ++i) {  
                listenersCopy.get(i).onLayoutChange(this, l, t, r, b, oldL, oldT, oldR, oldB);  
            }  
        }  
    }  
    mPrivateFlags &= ~FORCE_LAYOUT;  
}  
```
mPrivateFlags &= ~FORCE_LAYOUT 清空了FORCE_LAYOUT。也就是 这个view layout 之后 FORCE_LAYOUT会被清空。

例子代码[下载](http://download.csdn.net/detail/javalive09/6867681)
```
vg.addView(new Son(MainActivity.this));  
vg.addView(new Son(MainActivity.this));  
vg.addView(new Son(MainActivity.this));  
```
站在父容器vg 的角度看，会引发如下流程：

view1:
1. requestLayout(); //发出layout消息, 触发vg 的 onMeasure(), onLayout()
2. invalidate(true); //发出重绘制消息，触发vg 的draw()
3. child.setLayoutParams(params); //会触发child的layout(),  不会向父容器方向传递触发vg的layout。
因为被步骤1的父容器layout 的 mPrivateFlags == FORCE_LAYOUT阻断。

view2:
4. requestLayout(); // 不会发出layout消息，不会触发vg 的 onMeasure(), onLayout()。
因为被步骤1的父容器layout 的 mPrivateFlags == FORCE_LAYOUT阻断。
5. invalidate(true); //不会发出重绘消息，不会触发vg 的draw()。
因为被步骤2的 mPrivateFlags  DRAWN ／ DRAWING_CACHE_VALID／INVALIDATED阻断。
6. child.setLayoutParams(params); //会触发child的layout(),  不会向父容器方向传递触发vg的layout。
因为被步骤1的父容器layout 的 mPrivateFlags == FORCE_LAYOUT阻断。

view3:
7. requestLayout(); // 不会发出layout消息，不会触发vg 的 onMeasure(), onLayout()。
因为被步骤1的父容器layout 的 mPrivateFlags == FORCE_LAYOUT阻断。
8. invalidate(true); //不会发出重绘消息，不会触发vg 的draw()。
因为被步骤2的 mPrivateFlags  DRAWN ／ DRAWING_CACHE_VALID／INVALIDATED阻断。
9. child.setLayoutParams(params); //会触发child的layout(),  不会向父容器方向传递触发vg的layout。
被步骤1的父容器layout 的 mPrivateFlags == FORCE_LAYOUT阻断。
所以父类容器以及子view 的 onMeasure(), onLayout() 都只会被各调用一次。

## view 的OnTouchListener和OnClickListener的区别
有时候会迷惑，OnTouchListener和OnClickListener究竟有什么区别。 通过源码分析一下。
### OnTouchListener的触发逻辑
```
public boolean dispatchTouchEvent(MotionEvent event) {  
    if (mInputEventConsistencyVerifier != null) {  
        mInputEventConsistencyVerifier.onTouchEvent(event, 0);  
    }  
  
    if (onFilterTouchEventForSecurity(event)) {  
        //noinspection SimplifiableIfStatement  
        ListenerInfo li = mListenerInfo;  
        if (li != null && li.mOnTouchListener != null && (mViewFlags & ENABLED_MASK) == ENABLED  
                && li.mOnTouchListener.onTouch(this, event)) {  
            return true;  
        }  
  
        if (onTouchEvent(event)) {  
            return true;  
        }  
    }  
  
    if (mInputEventConsistencyVerifier != null) {  
        mInputEventConsistencyVerifier.onUnhandledEvent(event, 0);  
    }  
    return false;  
}  
```
分发touch事件时 先判断mOnTouchListener.onTouch() 是否处理了 事件，如果方法返回true(处理了)，则不向下传递。
所以OnTouchListener 的触发时机是：手指一触摸就会触发。 action_down的时候就会触发。而且touchListener的字面意思"触碰监听"也比较贴切 。
### OnClickListener的触发逻辑
```
public boolean onTouchEvent(MotionEvent event) {  
...  
if (((viewFlags & CLICKABLE) == CLICKABLE ||  
                (viewFlags & LONG_CLICKABLE) == LONG_CLICKABLE)) {  
            switch (event.getAction()) {  
                case MotionEvent.ACTION_UP:  
                    boolean prepressed = (mPrivateFlags & PREPRESSED) != 0;  
                    if ((mPrivateFlags & PRESSED) != 0 || prepressed) {  
                        // take focus if we don't have it already and we should in  
                        // touch mode.  
                        boolean focusTaken = false;  
                        if (isFocusable() && isFocusableInTouchMode() && !isFocused()) {  
                            focusTaken = requestFocus();  
                        }  
  
                        if (prepressed) {  
                            // The button is being released before we actually  
                            // showed it as pressed.  Make it show the pressed  
                            // state now (before scheduling the click) to ensure  
                            // the user sees it.  
                            setPressed(true);  
                       }  
  
                        if (!mHasPerformedLongPress) {  
                            // This is a tap, so remove the longpress check  
                            removeLongPressCallback();  
  
                            // Only perform take click actions if we were in the pressed state  
                            if (!focusTaken) {  
                                // Use a Runnable and post this rather than calling  
                                // performClick directly. This lets other visual state  
                                // of the view update before click actions start.  
                                if (mPerformClick == null) {  
                                    mPerformClick = new PerformClick();  
                                }  
                                if (!post(mPerformClick)) {  
                                    performClick();//触发点  
                                }  
                            }  
                        }  
...  
}  
```
下面看触发点performClick()
```
public boolean performClick() {  
    sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_CLICKED);  
  
    ListenerInfo li = mListenerInfo;  
    if (li != null && li.mOnClickListener != null) {  
        playSoundEffect(SoundEffectConstants.CLICK);  
        li.mOnClickListener.onClick(this);//触发点击事件  
        return true;  
    }  
  
    return false;  
}  
```
在onTouch()的事件处理的逻辑中，手指抬起 action_up 时，符合click的条件，则触发mOnClickListener的逻辑。

### 总结
OnTouchListener的触发点：action_down 手指按下时
OnClickListener的触发点：action_up 手指抬起时
OnTouchListener 处理逻辑在OnClickListener之前,  所以OnTouchListener 的onTouch（）如果返回true, 则 onTouchEvent ()中所有逻辑失效，当然OnClickListener也不会触发。

## View touch的传递流程
1 - ViewRootImpl    :deliverPointerEvent()
2 - PhoneWindow$DecorView   :dispatchTouchEvent()
3 - Activity   :dispatchTouchEvent()
4 - PhoneWindow   :superDispatchTouchEvent()
5 - PhoneWindow$DecorView   :superDispatchTouchEvent()
6 - ViewGroup   :dispatchTouchEvent()
7 - ViewGroup   :dispatchTransformedTouchEvent()
8 - ViewGroup   :dispatchTouchEvent()

> a 如果该层view容器没有事件拦截   :onInterceptTouchEvent() == false 

9 - 延续第7 ～ 8步，遍历传递。
10 - View   :dispatchTouchEvent()
11 - View   :onTouchEvent()

> b 如果该层view容器有事件拦截   :onInterceptTouchEvent() == true  

9 - 容器view   :onInterceptTouchEvent()
10 - ViewGroup   :dispatchTransformedTouchEvent()
11 - View   :dispatchTouchEvent()
12 - View   :onTouchEvent()


### dispatchTouchEvent()调用的时机
整个view体系保持通路的情况下，每次都调用。 只要有一层view dispatchTouchEvent返回false，短路。则之后整个view体系不会再调用此方法。

### onInterceptTouchEvent()调用时机
子view requestDisallowInterceptTouchEvent(false)时:
整个view体系保持通路的情况下，action_down时，mFirstTouchTarget != null 时。返回true拦截了mFirstTouchTarget 会置空，则之后再也不会调用此方法。

### onTouchEvent()调用时机
整个view体系保持通路的情况下，view类总会被调用。 在viewGroup容器类中：
a. 如果子View onTouch()返回false没处理（mFirstTouchTarget 没赋值==null），会调用本层的onTouch();
b. 本层拦截了事件（mFirstTouchTarget 没赋值==null）。会调用本层的onTouch();

> 注： dispatchTouchEvent 返回false，则系统下次不会再调用此方法。没有传递成功，则系统认为此事件无需再处理了。
什么情况下 返回false:
1.有targetView(有childView在点中区域), targetView dispatchTouchEvent() / onTouchEvent() 返回 false； 
2.无targetView(无childView在点中区域，或根本无childView), 当前view  onTouchEvent() 返回 false; (是否clickable ，long_clickable)

## View draw方法传递流程
1 - ViewRootImpl    :doTraversal()
```
void doTraversal() {  
    if (mTraversalScheduled) {  
        mTraversalScheduled = false;  
        mHandler.getLooper().removeSyncBarrier(mTraversalBarrier);  
  
        if (mProfile) {  
            Debug.startMethodTracing("ViewAncestor");  
        }  
  
        Trace.traceBegin(Trace.TRACE_TAG_VIEW, "performTraversals");  
        try {  
            performTraversals();  
        } finally {  
            Trace.traceEnd(Trace.TRACE_TAG_VIEW);  
        }  
  
        if (mProfile) {  
            Debug.stopMethodTracing();  
            mProfile = false;  
        }  
    }  
}  
```
2 - ViewRootImpl   :performTraversals()
3 - ViewRootImpl   :performDraw()
4 - ViewRootImpl   :draw()
5 - PhoneWindow$DecorView   :draw()
6 - ViewGroup   :dispatchDraw()
7 - ViewGroup   :drawChild()
8 - View   :draw()  
9 - 延续第 5 ～ 8步 ，遍历绘制

## 如何叠加多个listview 和gridview
可以重写 listView的onMeasure方法
```
protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {  
     int expandSpec = MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE ,    
                MeasureSpec.AT_MOST);    
     super.onMeasure(widthMeasureSpec, expandSpec);    
 }  
```
listView类源码中的onMeasure方法 中
```
if (heightMode == MeasureSpec.AT_MOST) {  
    // TODO: after first layout we should maybe start at the first visible position, not 0  
    heightSize = measureHeightOfChildren(widthMeasureSpec, 0, NO_POSITION, heightSize, -1);  
}  
```
确定heightSize;
在measureHeightOfChildren方法中计算heightSize的逻辑。
```
if (returnedHeight >= maxHeight) {  
                // We went over, figure out which height to return.  If returnedHeight > maxHeight,  
                // then the i'th position did not fit completely.  
                return (disallowPartialChildPosition >= 0) // Disallowing is enabled (> -1)  
                            && (i > disallowPartialChildPosition) // We've past the min pos  
                            && (prevHeightWithoutPartialChild > 0) // We have a prev height  
                            && (returnedHeight != maxHeight) // i'th child did not fit completely  
                        ? prevHeightWithoutPartialChild  
                        : maxHeight;  
            }  
```
所以只要maxHeight 足够大就会用计算出来的listView的真实高度作为高。这里用的是Integer.MAX_VALUE
>注： gridView 的onMeasure（）逻辑也类似，所以也可以用这种方法。

## 如何获取listview的内容高度
有时候需要在listview 显示之前获取内容的高度。
可以用 item.measure(0,0); 方式计算大小再获取。
>注：
item.measure(); 高度的参数是wrap_content的情况下和measure（0，0）计算的高度是一样的。
所以简化一下，不去配 heightMeasureSpec的值了，直接用（0，0）参数。
如果要配的话，可以用 MeasureSpec.makeMeasureSpec(parentSize, MeasureSpec.AT_MOST)，但是显然这样比较麻烦。

```
		int totalHeight = 0;  
        for (int i = 0; i < listAdapter.getCount(); i++) {  
           View listItem = listAdapter.getView(i, null, listView);  
            listItem.measure(0, 0);//取wrap_content的大小的高  
            totalHeight += listItem.getMeasuredHeight();  
        }  
```
##  android scrollview 滚动时会调用onlayout么
调用onlayout 的条件是   changed == true。 setFrame 返回 true 。也就是说，必须有， top，left，right，bottom 的值的变化。
```
public void layout(int l, int t, int r, int b) {  
    int oldL = mLeft;  
    int oldT = mTop;  
    int oldB = mBottom;  
    int oldR = mRight;  
    boolean changed = setFrame(l, t, r, b);  
    if (changed || (mPrivateFlags & LAYOUT_REQUIRED) == LAYOUT_REQUIRED) {  
        onLayout(changed, l, t, r, b);  
        mPrivateFlags &= ~LAYOUT_REQUIRED;  
  
        ListenerInfo li = mListenerInfo;  
        if (li != null && li.mOnLayoutChangeListeners != null) {  
            ArrayList<OnLayoutChangeListener> listenersCopy =  
                    (ArrayList<OnLayoutChangeListener>)li.mOnLayoutChangeListeners.clone();  
            int numListeners = listenersCopy.size();  
            for (int i = 0; i < numListeners; ++i) {  
                listenersCopy.get(i).onLayoutChange(this, l, t, r, b, oldL, oldT, oldR, oldB);  
            }  
        }  
    }  
    mPrivateFlags &= ~FORCE_LAYOUT;  
}  
```

```
    protected boolean setFrame(int left, int top, int right, int bottom) {
        boolean changed = false;

        if (DBG) {
            Log.d("View", this + " View.setFrame(" + left + "," + top + ","
                    + right + "," + bottom + ")");
        }

        if (mLeft != left || mRight != right || mTop != top || mBottom != bottom) {
            changed = true;

            // Remember our drawn bit
            int drawn = mPrivateFlags & DRAWN;

            int oldWidth = mRight - mLeft;
            int oldHeight = mBottom - mTop;
            int newWidth = right - left;
            int newHeight = bottom - top;
            boolean sizeChanged = (newWidth != oldWidth) || (newHeight != oldHeight);

            // Invalidate our old position
            invalidate(sizeChanged);

            mLeft = left;
            mTop = top;
            mRight = right;
            mBottom = bottom;
            if (mDisplayList != null) {
                mDisplayList.setLeftTopRightBottom(mLeft, mTop, mRight, mBottom);
            }

            mPrivateFlags |= HAS_BOUNDS;


            if (sizeChanged) {
                if ((mPrivateFlags & PIVOT_EXPLICITLY_SET) == 0) {
                    // A change in dimension means an auto-centered pivot point changes, too
                    if (mTransformationInfo != null) {
                        mTransformationInfo.mMatrixDirty = true;
                    }
                }
                onSizeChanged(newWidth, newHeight, oldWidth, oldHeight);
            }

            if ((mViewFlags & VISIBILITY_MASK) == VISIBLE) {
                // If we are visible, force the DRAWN bit to on so that
                // this invalidate will go through (at least to our parent).
                // This is because someone may have invalidated this view
                // before this call to setFrame came in, thereby clearing
                // the DRAWN bit.
                mPrivateFlags |= DRAWN;
                invalidate(sizeChanged);
                // parent display list may need to be recreated based on a change in the bounds
                // of any child
                invalidateParentCaches();
            }

            // Reset drawn bit to original value (invalidate turns it off)
            mPrivateFlags |= drawn;

            mBackgroundSizeChanged = true;
        }
        return changed;
    }
```

而scrollview 滚动时，调用的scrollTo 方法 只改变了scrollX, scrollY 的值。然后重绘，所以不会调用onlayout方法
```
public void scrollTo(int x, int y) {  
    if (mScrollX != x || mScrollY != y) {  
        int oldX = mScrollX;  
        int oldY = mScrollY;  
        mScrollX = x;  
        mScrollY = y;  
        invalidateParentCaches();  
        onScrollChanged(mScrollX, mScrollY, oldX, oldY);  
        if (!awakenScrollBars()) {  
            postInvalidateOnAnimation();  
        }  
    }  
}  
```
## View 中的 onAttachedToWindow onDetachedFromWindow 的作用是什么？
这两个方法是view对自己的被add ， 被remove 的监视。
onAttachedToWindow 是view 本身的回调，用于初始化一些东西相当于onstart 。当view 被添加到window中，被绘制之前的回调。如addview（this view）；
onDetachedFromWindow 是view 本身的回调，用于销毁一些东西onstop，当view被从window中删除时的回调。如 removeview（this view）；
### 调用流程
onAttachedToWindow():
```
viewGroup       addview（）
viewGroup       addViewInner（）
view            dispatchAttachedToWindow（）
onAttachedToWindow（）
```
onDetachedFromWindow():
```
viewGroup     removeView（）
viewGroup     removeViewInternal（）
view          dispatchDetachedFromWindow（）
onDetachedFromWindow（）
```

## 如何在xml中引用内部类？
### ViewB继承自View
```
<View    
        class="com.example.ClassA$ViewB"    
        android:layout_width="match_parent"    
        android:layout_height="match_parent" />   

```
### ViewB继承自ViewGroup
```
<ViewGroup    
    class="com.example.ClassA$ViewB"    
    android:layout_width="match_parent"    
    android:layout_height="match_parent" >    
<!-- ViewGroup内部的一些控件，比如button之类的 -->    
</ViewGroup> 
```
## translateAnimation.setFillxxx()作用是什么？
after,before 是用于设置动画结束之后画面停留的是哪帧。
### translateAnimation.setFillAfter(true);
动画结束后停留在最后一帧（动画结束后画面不变）。
### translateAnimation.setFillBefore(true);
动画结束后停留在第一帧（位置画面停留在动画开始位置）。

## 自定义菜单时点击Menu后，自定义菜单显示，但是activity窗口没获得焦点。为什么？
自定义菜单时。一定要重写这个方法，并返回false；
```
public boolean onCreateOptionsMenu(Menu menu) {  
    return false;  
}  
```

## 获取View的坐标
### 获取在所在父View中的坐标
getLeft() , getTop(), getBottom(), getRight()

### 获取在整个屏幕中的坐标
```
int[] location = new int[2];
View.getLocationOnScreen(location);
int x = location[0];
int y = location[1];
```
### 获取在所在Activity的window中的坐标
```
int[] location = new int[2];
View.getLocationInWindow(location);
int x = location[0];
int y = location[1];
```
### getLocalVisibleRect
获取视图本身可见的坐标区域，坐标以自己的左上角为原点（0，0）
### getGlobalVisibleRect
获取视图在屏幕坐标中的可视区域

## canvas的画文字方法参数的意义？
canvas.drawText(String text, float x, float y, Paint paint) 
y 参数的意义是文字的底部的坐标。

## 像素的结构
颜色（一个像素用一个int表示，32位真彩色）
![](http://7xoxmg.com1.z0.glb.clouddn.com/pixel.jpg)
alpha通道：透明度，0~255 共256级透明度
一张图片所占内存 = wide * hight * 4 byte

## canvas如何画出缩放的bitmap
### 方法1
```
public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {  
    if (dst == null) {  
        throw new NullPointerException();  
    }  
    throwIfRecycled(bitmap);  
    native_drawBitmap(mNativeCanvas, bitmap.ni(), src, dst,  
                      paint != null ? paint.mNativePaint : 0,  
                      mScreenDensity, bitmap.mDensity);  
} 
```
Rect src: 是对图片进行裁截，若是null则显示整个图片
Rect dst：是图片在Canvas画布中显示的区域，大于src则把src的裁截区放大，小于src则把src的裁截区缩小。

### 方法2
```
        // 定义矩阵对象  
        Matrix matrix=new Matrix(); 
        // 缩放原图  
        matrix.postScale(0.5f, 0.5f); 
        Bitmap dstbmp=Bitmap.createBitmap(bmp,0,0,bmp.getWidth(),bmp.getHeight(),matrix,true);
```
## View自定义长按菜单实现
### 触发流程
响应view：ontouch() --> performLongClick() --> showContextMenu()
调用根容器：--> getparent().showContextMenuForChild（this）会一层层将响应长按的view传递至父容器。
### 响应逻辑
在根容器中重写 showContextMenuForChild（View originalView）进行处理。
1. originalView.onCreateContextMenu() 装填内容，originalView必须提供getContextMenuInfo()方法
2. showmenu()

## 计算android view的FPS
FPS : frame per second 刷新率 ，每秒绘制的帧数。
### 如何计算：
在onDraw() 方法中进行逻辑计算
每调用一次onDraw() 方法，则frame 加 1；
因为绘制每帧的时间不同，所以
当时间刚好大于1秒的时候，进行计算。
如绘制了60帧，刚好用了1.2秒
则 fps ＝ 60 / 1.2；
fps ＝ 50 帧/秒；
## 代码
```
    @Override

    protected void onDraw(Canvas canvas) {

        super.onDraw(canvas);

    //耗时的绘制

    draw。。。。。。。。



        // fps counter: count how many frames we draw and once a second calculate the

        // frames per second

        ++frames;

        long nowTime = System.currentTimeMillis();

        long deltaTime = nowTime - startTime;

        if (deltaTime > 1000) {

            float secs = (float) deltaTime / 1000f;

            fps = (float) frames / secs;

            fpsString = "fps: " + fps;

            startTime = nowTime;

            frames = 0;

        }

       canvas.drawText(fpsString, getWidth() - 200, getHeight() - 80, textPaint);

    }
```
## android中改变view位置的几种方法
### 调用 layout方法
```
    public void layout(int l, int t, int r, int b) {
        int oldL = mLeft;
        int oldT = mTop;
        int oldB = mBottom;
        int oldR = mRight;
        boolean changed = setFrame(l, t, r, b);
        if (changed || (mPrivateFlags & LAYOUT_REQUIRED) == LAYOUT_REQUIRED) {
            if (ViewDebug.TRACE_HIERARCHY) {
                ViewDebug.trace(this, ViewDebug.HierarchyTraceType.ON_LAYOUT);
            }

            onLayout(changed, l, t, r, b);
            mPrivateFlags &= ~LAYOUT_REQUIRED;

            if (mOnLayoutChangeListeners != null) {
                ArrayList<OnLayoutChangeListener> listenersCopy =
                        (ArrayList<OnLayoutChangeListener>) mOnLayoutChangeListeners.clone();
                int numListeners = listenersCopy.size();
                for (int i = 0; i < numListeners; ++i) {
                    listenersCopy.get(i).onLayoutChange(this, l, t, r, b, oldL, oldT, oldR, oldB);
                }
            }
        }
        mPrivateFlags &= ~FORCE_LAYOUT;
    }
```

### 设置MarginLayoutParams， 然后调用setLayoutParams()
```
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        if (params == null) {
            throw new NullPointerException("Layout parameters cannot be null");
        }
        mLayoutParams = params;
        requestLayout();
    }
```

### 外容器scrollTo 方法。改变view窗体位置。会改变所有的子View位置
```
public void scrollTo(int x, int y) {  
    if (mScrollX != x || mScrollY != y) {  
        int oldX = mScrollX;  
        int oldY = mScrollY;  
        mScrollX = x;  
        mScrollY = y;  
        invalidateParentCaches();  
        onScrollChanged(mScrollX, mScrollY, oldX, oldY);  
        if (!awakenScrollBars()) {  
            invalidate(true);  
        }  
    }  
}  
```

## view 的scroll系列方法的理解
### scrollTo():
```
public void scrollTo(int x, int y) {  
    if (mScrollX != x || mScrollY != y) {  
        int oldX = mScrollX;  
        int oldY = mScrollY;  
        mScrollX = x;  
        mScrollY = y;  
        invalidateParentCaches();  
        onScrollChanged(mScrollX, mScrollY, oldX, oldY);  
        if (!awakenScrollBars()) {  
            invalidate(true);  
        }  
    }  
} 
```
### scrollBy()
```
public void scrollBy(int x, int y) {  
    scrollTo(mScrollX + x, mScrollY + y);  
}  
```

### setScrollX
```
public void setScrollX(int value) {  
    scrollTo(value, mScrollY);  
}  
```
### setScrollY
```
public void setScrollY(int value) {  
    scrollTo(mScrollX, value);  
} 
```
scroll方法针对的是view中的内容。
如view.scrollTo(50,0); 表示的是针对内容的（0，0）坐标view滚动了50个像素。
展现的是，内容向左边移动了50个像素。
![](http://7xoxmg.com1.z0.glb.clouddn.com/scroll.jpg)

## LayoutInflater 的inflate(int resource, ViewGroup root, boolean attachToRoot)方法研究
### 情况一： root =null,  attachToRoot = false;
```
View temp = createViewFromTag(root, name, attrs);  
  
// Inflate all children under temp  
rInflate(parser, temp, attrs, true);  
  
return temp;  
```
### 情况二：root != null, attachToRoot = false;
```
View temp = createViewFromTag(root, name, attrs);  
  
ViewGroup.LayoutParams params = root.generateLayoutParams(attrs);  
temp.setLayoutParams(params);  
  
// Inflate all children under temp  
rInflate(parser, temp, attrs, true);  
  
return temp; 
```
### 情况三：root != null, attachToRoot = true;
```
View temp = createViewFromTag(root, name, attrs);  
  
ViewGroup.LayoutParams params = root.generateLayoutParams(attrs);  
temp.setLayoutParams(params);  
  
// Inflate all children under temp  
rInflate(parser, temp, attrs, true);  
  
root.addView(temp, params);  
  
return root;  
```

### 总结
#### root为空时
返回temp。
#### root 不为空时 
attachToRoot = true 。返回root；
attachToRoot = false。设置temp  layoutParams 。返回temp。

## ViewPager SimpleOnPageChangeListener中回调函数的调用场景
Listener 的源码如下：
```
240     public static class SimpleOnPageChangeListener implements OnPageChangeListener {  
241         @Override  
242         public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {  
243             // This space for rent  
244         }  
245   
246         @Override  
247         public void onPageSelected(int position) {  
248             // This space for rent  
249         }  
250   
251         @Override  
252         public void onPageScrollStateChanged(int state) {  
253             // This space for rent  
254         }  
255     }  
```
### 1.onPageScrolled(int position, float positionOffset, int positionOffsetPixels)：
position:当前的位置
positionoffset:当前滚动比例（左－右／0-1）（右－左／1-0）
positionOffsetPixels：当前实际滚动的像素（左－右／0-页宽） （右－左／页宽－0）
#### 被调用的场景:
ViewPager滚动时总被回调，这个函数在操作ViewPager时被回调很多次。
1.手指拖动 action_move 。n次
2.惯性还原 computeScroll()。n次
#### 使用场景:
做view的动画效果时可以用这个回调函数。

### 2.onPageSelected(int position)
#### 被调用的场景：
ViewPager确定页面是哪一页时。1次
1. 手指拖动后抬起 action_up 。1次
2. 或者手指滑动超出屏幕时 action_cancel。1次
#### 使用场景：
页面切换后改变对应的tab的状态可以用这个回调函数。
### 3.onPageScrollStateChanged(int state):
#### 被调用的场景：
ViewPager状态切换时被调用。这个函数在操作ViewPager时被回调3次。
1.开始滚动 dragging拖动状态。1次
2.惯性滚动 settling还原状态。1次
3.滚动结束 idle空闲状态。1次
#### 使用场景：
做页面状态变化后引起的view特效时可以用这个回调函数

## TextView setEms 方法名字
Android TextView setEms() 作用是设置textview的字符宽度。但是名字很奇怪。
```
/** 
 * Makes the TextView exactly this many ems wide 
 * 
 * @attr ref android.R.styleable#TextView_ems 
 */  
@android.view.RemotableViewMethod  
public void setEms(int ems) {  
    mMaxWidth = mMinWidth = ems;  
    mMaxWidthMode = mMinWidthMode = EMS;  
  
    requestLayout();  
    invalidate();  
}  
```
An em is a unit in the field of typography  
em是一个印刷排版的单位，表示字宽的单位。 em字面意思为：equal M   （和M字符一致的宽度为一个单位）简称em。
ems是em的复数表达。
[em 的具体来历？](http://en.wikipedia.org/wiki/Em_%28typography%29)

## View容器 measure 流程
### FrameLayout onMeasure()
```
1.    measureChildWithMargins() ViewGroup.Java
1.1   getChildMeasureSpec()     ViewGroup.java
1.2   child.measure()  View.java
1.2.1 chlid.onMeasure()        

2.    resolveSizeAndState()     View.java
3.    setMeasuredDimension()    View.java
```
### LinearLayout onMeasure()
```
1.    measureChildWithMargins() ViewGroup.java
1.1   getChildMeasureSpec()     ViewGroup.java
1.2   child.measure()  View.java
1.2.1 chlid.onMeasure()        

2.    resolveSizeAndState()     View.java
3.    setMeasuredDimension()    View.java
```
### RelateveLayout onMeasure()
```
1.    measureChild()            RelateveLayout.java
1.1   getChildMeasureSpec()     RelateveLayout.java
1.2   child.measure()  View.java
1.2.1 chlid.onMeasure()        

2.    resolveSizeAndState()    View.java
3.    setMeasuredDimension()    View.java
```

### AbsoluteLayout onMeasure()
```
1.    measureChildren()         ViewGroup.java
1.1   getChildMeasureSpec()     ViewGroup.java
1.2   child.measure()  View.java
1.2.1 chlid.onMeasure()        

2.    resolveSizeAndState()    View.java
3.    setMeasuredDimension()    View.java
```


------



# window
## animation
### 启动动画
```
startActivity(new Intent(A.this, B.class));  
overridePendingTransition(inAnim, outAnim);  
```
### 结束动画
```
finish();  
activity.overridePendingTransition(inAnim, outAnim); 
```
### 全局activity动画
```
<style name="Theme.Test" parent="@android:style/Theme.Light.NoTitleBar">  
    <item name="android:windowAnimationStyle">@style/Animation.Activity.Test</item>  
</style>  
```
```
<style name="Animation.Activity.Test" parent="@android:style/Animation.Activity">  
    <item name="android:activityOpenEnterAnimation">@anim/activity_open_enter</item>  
    <item name="android:activityOpenExitAnimation">@anim/activity_open_exit</item>  
    <item name="android:activityCloseEnterAnimation">@anim/activity_close_enter</item>  
    <item name="android:activityCloseExitAnimation">@anim/activity_close_exit</item>  
             
    <item name="android:taskOpenEnterAnimation">@anim/activity_open_enter</item>  
    <item name="android:taskOpenExitAnimation">@anim/activity_open_exit</item>  
    <item name="android:taskCloseEnterAnimation">@anim/activity_close_enter</item>  
    <item name="android:taskCloseExitAnimation">@anim/activity_close_exit</item>  
             
    <item name="android:taskToFrontEnterAnimation">@anim/activity_open_enter</item>  
    <item name="android:taskToFrontExitAnimation">@anim/activity_open_exit</item>  
    <item name="android:taskToBackEnterAnimation">@anim/activity_close_enter</item>  
    <item name="android:taskToBackExitAnimation">@anim/activity_close_exit</item>  
</style>  
```
## 不影响系统交互的悬浮窗window参数设置
type:
```
WindowManager.LayoutParams.TYPE_TOAST
```
flag：
```
WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|
        WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
```
```
if (mVolumeView == null) {  
    WindowManager mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);  
    View rootView = View.inflate(context, R.layout.volume_layout, null);  
    mVolumeView = (VolumeView) rootView.findViewById(R.id.volume);  
    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(  
            WindowManager.LayoutParams.MATCH_PARENT,  
            WindowManager.LayoutParams.MATCH_PARENT,  
            WindowManager.LayoutParams.TYPE_TOAST,  
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|  
                    WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE,  
            PixelFormat.TRANSLUCENT);  
    layoutParams.gravity = Gravity.TOP;  
    mWindowManager.addView(rootView, layoutParams);  
}  
```

## 如何监听window的back键
可以重写window的根view的dispatchKeyEvent方法
```
WindowManager mWindowManager = (WindowManager) getContext().getSystemService(Context.WINDOW_SERVICE);  
Display display = mWindowManager.getDefaultDisplay();  
int width = display.getWidth();  
int height = display.getHeight();  
int statusBarHeight = getStatusBarHeight();  
final PopupWindow pw = new PopupWindow(width, height - statusBarHeight);  
  
final FrameLayout container = new FrameLayout(getContext()){  
  
    @Override  
    public boolean dispatchKeyEvent(KeyEvent event) {  
        if(event.getAction() == KeyEvent.ACTION_UP) {  
            if(event.getKeyCode() == KeyEvent.KEYCODE_BACK) {  
                Log.addLog(this, "window height =" + pw.getHeight());  
                removeAllViews();  
                pw.dismiss();  
                return true;  
            }  
        }  
        return super.dispatchKeyEvent(event);  
    }  
      
};  
container.addView(view, params);  
pw.setContentView(container);  
pw.setFocusable(true);  
pw.setAnimationStyle(R.style.popUpWindowAnimation);  
pw.showAtLocation(this, Gravity.NO_GRAVITY, 0, statusBarHeight); 
```

------

# 修改app 默认动画

在activity中添加overridePendingTransition即可满足 应用启动activity和应用中activity间切换时的动画一致。

```
        protected void onCreate(Bundle savedInstanceState) {
            setContentView(R.layout.main_dashboard);
            overridePendingTransition(R.anim.activity_open_enter, R.anim.activity_open_exit);//添加启动动画
        }

        public void finish() {
            super.finish();
            overridePendingTransition(R.anim.activity_close_enter, R.anim.activity_close_exit);//添加退出动画
        }

```


------

# 设备的适配
[官方文档](https://developer.android.google.cn/guide/practices/screens_support.html?hl=zh-cn)
![](http://7xoxmg.com1.z0.glb.clouddn.com/fitres.jpg)


## 一套代码适配不同屏幕设备。
原理：通过修改density保证任意分辨率设备按密度比率进行像素缩放，纵向可滚动。
接口：提供的接口保证可以缩放activity内的显示效果，并且能还原缩放。

```
public class DensityUtil {

    private static float mNonCompatDensity;
    private static int mNonCompatDensityDpi;
    private static float mNonCompatScaledDensity;

    public static void fitDensity(@NonNull Activity activity, @NonNull final Application application, int designWith) {
        final DisplayMetrics appDisplayMetrics = application.getResources().getDisplayMetrics();

        if (mNonCompatDensity == 0) {
            mNonCompatDensity = appDisplayMetrics.density;
            mNonCompatDensityDpi = appDisplayMetrics.densityDpi;
            mNonCompatScaledDensity = appDisplayMetrics.scaledDensity;
            application.registerComponentCallbacks(new ComponentCallbacks() {
                @Override
                public void onConfigurationChanged(Configuration newConfig) {
                    if (newConfig != null && newConfig.fontScale > 0) {
                        mNonCompatScaledDensity = application.getResources().getDisplayMetrics().scaledDensity;
                    }
                }

                @Override
                public void onLowMemory() {

                }
            });
        }

        final float targetDensity = appDisplayMetrics.widthPixels * 1.0f / designWith;
        final int targetDensityDpi = (int) (160 * targetDensity);
        final float targetScaledDensity = targetDensity * (mNonCompatScaledDensity / mNonCompatDensity);

        appDisplayMetrics.density = targetDensity;
        appDisplayMetrics.densityDpi = targetDensityDpi;
        appDisplayMetrics.scaledDensity = targetScaledDensity;

        final DisplayMetrics activityDisplayMetrics = activity.getResources().getDisplayMetrics();
        activityDisplayMetrics.density = targetDensity;
        activityDisplayMetrics.densityDpi = targetDensityDpi;
        activityDisplayMetrics.scaledDensity = targetScaledDensity;
        Log.i("peter", " appDisplayMetrics.density :" + appDisplayMetrics.density + ";appDisplayMetrics"
                + ".scaledDensity:" + appDisplayMetrics.scaledDensity);
    }

    public static void resetFit(@NonNull final Application application) {
        final DisplayMetrics appDisplayMetrics = application.getResources().getDisplayMetrics();
        if (mNonCompatDensity != 0) {
            appDisplayMetrics.density = mNonCompatDensity;
            appDisplayMetrics.densityDpi = mNonCompatDensityDpi;
            appDisplayMetrics.scaledDensity = mNonCompatScaledDensity;
        }
    }

}

```
