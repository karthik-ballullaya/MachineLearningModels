	?.??a@?.??a@!?.??a@	Cx??@Cx??@!Cx??@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:?.??a@?q?߅???Aa??????Ydv?S??rEagerKernelExecute 0*	???S??W@2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapY??+????!?Ԣ;?A@)??^???1~č/?]<@:Preprocessing2U
Iterator::Model::ParallelMapV2bi?G5???!&??|Z?8@)bi?G5???1&??|Z?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????y??!8?Y\?0;@)???`ũ??1?L??8F7@:Preprocessing2F
Iterator::Model?)?D/???!j???	A@)_Ӄ?R???1Z1m?q5#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice??a?'v?!t????@)??a?'v?1t????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???c[??!L.9*?tP@)??'??q?1gU?U@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???g?n?!@?:=R@)???g?n?1@?:=R@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9Cx??@I>$h?SWX@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?q?߅????q?߅???!?q?߅???      ??!       "      ??!       *      ??!       2	a??????a??????!a??????:      ??!       B      ??!       J	dv?S??dv?S??!dv?S??R      ??!       Z	dv?S??dv?S??!dv?S??b      ??!       JCPU_ONLYYCx??@b q>$h?SWX@